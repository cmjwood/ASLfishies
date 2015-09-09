//
//  UserViewController.m
//  ASLfish
//
//  Created by Casey Wood on 8/18/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "UserViewController.h"

@interface UserViewController ()

@end

@implementation UserViewController

@synthesize thumbDown;
@synthesize thumbUp;
@synthesize sendMessage;
@synthesize imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)thumbDownTapped:(id)sender {
        if (!thumbDown.selected) {
            thumbDown.selected = YES;
            thumbUp.selected = NO;
            sendMessage.selected = YES;
        }
        
}


- (IBAction)sendMessageTapped:(id)sender {
    
}

- (IBAction)thumbUpTapped:(id)sender {
        if (!thumbUp.selected) {
            thumbUp.selected = YES;
            thumbDown.selected = NO;
            sendMessage.selected = YES;
        }
        
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
