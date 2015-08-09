//
//  LevelofSignLanguageViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/8/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "LevelofSignLanguageViewController.h"

@interface LevelofSignLanguageViewController ()

@end

@implementation LevelofSignLanguageViewController


@synthesize nativeCircle;
@synthesize beginningCircle;
@synthesize averageCircle;
@synthesize advancedCircle;

- (void)viewDidLoad {
    [super viewDidLoad];
    tapped = NO;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)nativeButton:(id)sender {
    if (!tapped) {
        [nativeCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [nativeCircle setImage: [UIImage imageNamed: @"nativeCircle.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)beginningButton:(id)sender {
    if (!tapped) {
        [beginningCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [beginningCircle setImage: [UIImage imageNamed: @"beginningCircle.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)averageButton:(id)sender {
    if (!tapped) {
        [averageCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [averageCircle setImage: [UIImage imageNamed: @"averageCircle.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}


- (IBAction)advancedButton:(id)sender {
    if (!tapped) {
        [advancedCircle setImage: [UIImage imageNamed: @"Full Moon-100-2.png"] forState: UIControlStateNormal];
        tapped = YES;
    }
    
    else if (tapped) {
        [advancedCircle setImage: [UIImage imageNamed: @"advancedCircle.png"] forState: UIControlStateNormal];
        tapped = NO;
    }
}

@end
