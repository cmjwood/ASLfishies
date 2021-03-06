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
#import <ParseFacebookUtilsV4/PFFacebookUtils.h>
#import "IntroViewController.h"

@interface ViewController () <PFSignUpViewControllerDelegate, PFLogInViewControllerDelegate>

@property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;

@end

@implementation ViewController



- (void)viewDidLoad {
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
//    loginButton.center = self.view.center;
    
    UIButton *myLoginButton=[UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *loginButtonImage = [UIImage imageNamed:@"FB Login.png"];
    [myLoginButton setImage:loginButtonImage forState:UIControlStateNormal];
//    myLoginButton.backgroundColor=[UIColor darkGrayColor];
    myLoginButton.frame=CGRectMake(37,592,303,56);
//    myLoginButton.center = self.view.center;
//    [myLoginButton setTitle: @"My Login Button" forState: UIControlStateNormal];
    
    // Handle clicks on the button
    [myLoginButton
     addTarget:self
     action:@selector(loginButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    loginButton.readPermissions =@[@"public_profile", @"email", @"user_friends"];
    
    // Add the button to the view
    [self.view addSubview:myLoginButton];
}

// Once the button is clicked, show the login dialog
-(void)loginButtonClicked
{
    //    NSArray *permissions = @[@"name",@"pictureURL",@"birthday_date", @"current_address", @"public_profile", @"email", @"user_friends"];
    //    [PFFacebookUtils logInInBackgroundWithReadPermissions:permissions block:^(PFUser * user, NSError * error) {
    //        if (!user) {
    //            NSLog(@"login error!");
    //        } else {
    if ([FBSDKAccessToken currentAccessToken]) {
            [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
             startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
                      if (!error) {
                          NSDictionary *dict = result;
        
                          for (NSString *string in dict.allKeys) {
                              if ([string isEqualToString:@"id"]) {
                                  [PFUser currentUser][@"facebookID"] = dict[string];
                              }
                              [PFUser currentUser][string] = dict[string];
                          }
                          [[PFUser currentUser]saveInBackground];
        
                          NSString *pictureURL = [NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=normal",result[@"id"]];
        
                          NSString *name = result[@"name"];
//                          NSString *birthday = result[@"birthday_date"];
//                          NSString *currentAddress = result[@"current_address"];
                          NSData *imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:pictureURL]];
                          NSLog(@"%@", result);
                          NSLog(@"email is %@", [result objectForKey:@"email"]);
        
        
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
                               
                               [PFFacebookUtils logInInBackgroundWithAccessToken:[FBSDKAccessToken currentAccessToken]
                                                                           block:^(PFUser *user, NSError *error) {
                                                                               if (!user) {
                                                                                   NSLog(@"Uh oh. There was an error logging in.");
                                                                               } else {
                                                                                   if (![PFFacebookUtils isLinkedWithUser:user]) {
                                                                                       [PFFacebookUtils linkUserInBackground:user withReadPermissions:nil block:^(BOOL succeeded, NSError *error) {
                                                                                           if (succeeded) {
                                                                                               NSLog(@"Woohoo, user is linked with Facebook!");
                                                                                           }
                                                                                       }];
                                                                                   }
                                                                                   NSLog(@"User logged in through Facebook!");
                                                                               }
                                                                           }];
                               UINavigationController *navController = [self.storyboard instantiateViewControllerWithIdentifier:@"introNav"];
                               IntroViewController *viewController = navController.viewControllers.firstObject;
        //                       NSData  *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:pictureURL]];
                               viewController.profileImageData = imageData;
                               viewController.fullNameData = name;
//                               viewController.birthdayDateData = birthday;
//                               viewController.addressData = currentAddress;
                               [self presentViewController:navController animated:true completion:^{ }];
        //                       [self.navigationController pushViewController: viewController animated:YES];
                           }];
                      }
                      else{
                          NSLog(@"%@", [error localizedDescription]);
                      }
                  }];
            }
        
        }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//    [super viewDidLoad];
//    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
//    loginButton.readPermissions = @[@"name",@"pictureURL",@"birthday_date", @"current_address"];
//////
//////    loginButton.center = self.view.center;
//////    [loginButton setImage: [UIImage imageNamed:@"FB Login.png"] forState: UIControlStateNormal];
////    
//    UIButton *myLoginButton=[UIButton buttonWithType:UIButtonTypeCustom];
//    UIImage *loginButtonImage = [UIImage imageNamed:@"FB Login.png"];
//    [myLoginButton setImage:loginButtonImage forState:UIControlStateNormal];
//////    myLoginButton.backgroundColor=[UIColor darkGrayColor];
//    myLoginButton.frame=CGRectMake(37,592,303,56);
//////    myLoginButton.center = self.view.center;
//    [myLoginButton setTitle: @"My Login Button" forState: UIControlStateNormal];
//////
////    // Handle clicks on the button
//    [myLoginButton
//     addTarget:self
//     action:@selector(loginButtonClicked) forControlEvents:UIControlEventTouchUpInside];
////    loginButton.readPermissions =@[@"public_profile", @"email", @"user_friends"];
//    
//
//    // Add the button to the view
//    [self.view addSubview:myLoginButton];
//     }
//     
////- (IBAction)fbTapped:(id)sender {
////    NSArray *permissions = @[@"name",@"pictureURL",@"birthday_date", @"current_address", @"public_profile", @"email", @"user_friends"];
////    [PFFacebookUtils logInInBackgroundWithReadPermissions:permissions block:^(PFUser * user, NSError * error) {
////        if (!user) {
////            NSLog(@"login error!");
////        } else {
////            [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
////             startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
////                 if (!error) {
////                     NSDictionary *dict = result;
////                     
////                     for (NSString *string in dict.allKeys) {
////                         if ([string isEqualToString:@"id"]) {
////                             [PFUser currentUser][@"facebookID"] = dict[string];
////                         }
////                         [PFUser currentUser][string] = dict[string];
////                     }
////                     [[PFUser currentUser]saveInBackground];
////                     UINavigationController *navController = [self.storyboard instantiateViewControllerWithIdentifier:@"introNav"];
////                     IntroViewController *viewController = navController.viewControllers.firstObject;
////                     //                       NSData  *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:pictureURL]];
////
////                        //TODO: Change the following to get the data from the Facebook graph request.
////                     
//////                     viewController.profileImageData = imageData;
//////                     viewController.fullNameData = name;
//////                     viewController.birthdayDateData = birthday;
//////                     viewController.addressData = currentAddress;
////                     [self presentViewController:navController animated:true completion:^{ }];
////                     //                       [self.navigationController pushViewController: viewController animated:YES];
////
////                 } else {
////                     NSLog(@"error getting Facebook data");
////                 }
////            }];
////        }
////    }];
////}
//
//// Once the button is clicked, show the login dialog
//-(void)loginButtonClicked
//{
//    
//    if ([FBSDKAccessToken currentAccessToken]) {
//    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
//     startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
//              if (!error) {
//                  NSDictionary *dict = result;
//                  
//                  for (NSString *string in dict.allKeys) {
//                      if ([string isEqualToString:@"id"]) {
//                          [PFUser currentUser][@"facebookID"] = dict[string];
//                      }
//                      [PFUser currentUser][string] = dict[string];
//                  }
//                  [[PFUser currentUser]saveInBackground];
//                  
//                  NSString *pictureURL = [NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=normal",result[@"id"]];
//
//                  NSString *name = result[@"name"];
//                  NSString *birthday = result[@"birthday_date"];
//                  NSString *currentAddress = result[@"current_address"];
//                  NSData *imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:pictureURL]];
//                  NSLog(@"%@", result);
//                  NSLog(@"email is %@", [result objectForKey:@"email"]);
//    
//              
//                  FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
//                  [login
//                   logInWithReadPermissions: @[@"public_profile"]
//                   handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
//                       if (error) {
//                           NSLog(@"Process error");
//                       } else if (result.isCancelled) {
//                           NSLog(@"Cancelled");
//                       } else {
//                           NSLog(@"Logged in");
//                       }
//                       UINavigationController *navController = [self.storyboard instantiateViewControllerWithIdentifier:@"introNav"];
//                       IntroViewController *viewController = navController.viewControllers.firstObject;
////                       NSData  *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:pictureURL]];
//                       viewController.profileImageData = imageData;
//                       viewController.fullNameData = name;
//                       viewController.birthdayDateData = birthday;
//                       viewController.addressData = currentAddress;
//                       [self presentViewController:navController animated:true completion:^{ }];
////                       [self.navigationController pushViewController: viewController animated:YES];
//                   }];
//              }
//              else{
//                  NSLog(@"%@", [error localizedDescription]);
//              }
//          }];
//    }
//
//}
//
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//@end
