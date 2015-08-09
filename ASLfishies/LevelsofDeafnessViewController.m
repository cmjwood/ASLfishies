//
//  LevelsofDeafnessViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "LevelsofDeafnessViewController.h"

@interface LevelsofDeafnessViewController ()

@end

@implementation LevelsofDeafnessViewController

@synthesize deafCircle;
@synthesize hofhCircle;
@synthesize codaCircle;
@synthesize hearingCircle;



- (void)viewDidLoad {
    [super viewDidLoad];
    tapped = NO;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)deafTapped:(UIButton *)sender {
    
    if (!tapped) {
        [deafCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [deafCircle setImage: [UIImage imageNamed: @"New Moon Filled-100 + Deaf.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}

- (IBAction)hofhTapped:(UIButton *)sender {
    if (!tapped) {
        [hofhCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [hofhCircle setImage: [UIImage imageNamed: @"HofHcircle.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
    
}

- (IBAction)codaTapped:(UIButton *)sender {
    if (!tapped) {
        [codaCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [codaCircle setImage: [UIImage imageNamed: @"New Moon Filled-100+CODA.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)hearingTapped:(UIButton *)sender {
    if (!tapped) {
        [hearingCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [hearingCircle setImage: [UIImage imageNamed: @"New Moon Filled-100.png"] forState: UIControlStateNormal];
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
