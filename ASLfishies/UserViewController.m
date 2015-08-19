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
    if (!tapped) {
        
        [thumbDown setImage: [UIImage imageNamed: @"Poor Quality-50.png"] forState: UIControlStateNormal];
        
        tapped = YES;
        
    }
    else if (tapped) {
        
        [thumbDown setImage: [UIImage imageNamed: @"Poor Quality Filled-50.png"] forState: UIControlStateNormal];
        
        tapped = NO;
        
    }
    
}


- (IBAction)sendMessageTapped:(id)sender {
    if (!tapped) {
        
        [sendMessage setImage: [UIImage imageNamed: @"Speech Bubble-50 copy.png"] forState: UIControlStateNormal];
        
        tapped = YES;
        
    }
    else if (tapped) {
        
        [sendMessage setImage: [UIImage imageNamed: @"Speech Bubble Filled-50.png"] forState: UIControlStateNormal];
        
        tapped = NO;
        
    }
    
}

- (IBAction)thumbUpTapped:(id)sender {
    if (!tapped) {
        
        [thumbUp setImage: [UIImage imageNamed: @"Good Quality-50.png"] forState: UIControlStateNormal];
        
        tapped = YES;
        
    }
    else if (tapped) {
        
        [thumbUp setImage: [UIImage imageNamed: @"Good Quality Filled-50.png"] forState: UIControlStateNormal];
        
        tapped = NO;
        
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
