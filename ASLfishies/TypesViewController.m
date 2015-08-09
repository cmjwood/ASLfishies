//
//  TypesViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "TypesViewController.h"

@interface TypesViewController ()

@end

@implementation TypesViewController

@synthesize anyCircle;
@synthesize maleCircle;
@synthesize femaleCircle;
@synthesize deafCircle;
@synthesize codaCircle;
@synthesize hofhCircle;
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

- (IBAction)anyButton:(id)sender {
    if (!tapped) {
        [anyCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [anyCircle setImage: [UIImage imageNamed: @"anyCircle.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)maleButton:(id)sender {
    if (!tapped) {
        [maleCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [maleCircle setImage: [UIImage imageNamed: @"maleCircle.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)femaleButton:(id)sender {
    if (!tapped) {
        [femaleCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [femaleCircle setImage: [UIImage imageNamed: @"femaleCircle.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)deafButton:(id)sender {
    if (!tapped) {
        [deafCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [deafCircle setImage: [UIImage imageNamed: @"New Moon Filled-100 + Deaf.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)codaButton:(id)sender {
    if (!tapped) {
        [codaCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [codaCircle setImage: [UIImage imageNamed: @"New Moon Filled-100+CODA.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)hofhButton:(id)sender {
    if (!tapped) {
        [hofhCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [hofhCircle setImage: [UIImage imageNamed: @"New Moon Filled-100+HofH.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)hearingButton:(id)sender {
    if (!tapped) {
        [hearingCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [hearingCircle setImage: [UIImage imageNamed: @"hearingCircle.png"] forState: UIControlStateNormal];
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
