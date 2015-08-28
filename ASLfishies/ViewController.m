//
//  ViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ViewController.h"
#import <ParseUI/ParseUI.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <Parse/Parse.h>
#import "IntroViewController.h"

@interface ViewController () <PFSignUpViewControllerDelegate, PFLogInViewControllerDelegate>
@property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    
    loginButton.center = self.view.center;
    
    UIButton *myLoginButton=[UIButton buttonWithType:UIButtonTypeCustom];
    myLoginButton.backgroundColor=[UIColor darkGrayColor];
    myLoginButton.frame=CGRectMake(0,0,180,40);
    myLoginButton.center = self.view.center;
    [myLoginButton setTitle: @"My Login Button" forState: UIControlStateNormal];
    
    // Handle clicks on the button
    [myLoginButton
     addTarget:self
     action:@selector(loginButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    loginButton.readPermissions =@[@"public_profile", @"email", @"user_friends"];
    
    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
     startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
         
         [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me"
                                            parameters:@{@"fields": @"picture, email"}]
          startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
              if (!error) {
                  NSString *pictureURL = [NSString stringWithFormat:@"%@",[result objectForKey:@"picture"]];
                  
                  NSLog(@"email is %@", [result objectForKey:@"email"]);
                  
//                  NSData  *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:pictureURL]];
//                  self.imageView.image = [UIImage imageWithData:data];
                  
              }
              else{
                  NSLog(@"%@", [error localizedDescription]);
    // Add the button to the view
    [self.view addSubview:myLoginButton];
              }
          }];
     }];
     }
     
     
     
// Once the button is clicked, show the login dialog
-(void)loginButtonClicked
{
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    [login
     logInWithReadPermissions: @[@"public_profile"]
     handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
         if (error) {
             NSLog(@"Process error");
         } else if (result.isCancelled) {
             NSLog(@"Cancelled");
         } else {
             NSLog(@"Logged in");
         }
         IntroViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"intro"];
//         viewController.imageView.image = 
         [self.navigationController pushViewController:viewController animated:YES];
     }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
