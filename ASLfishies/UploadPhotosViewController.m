//
//  UploadPhotosViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "UploadPhotosViewController.h"

@interface UploadPhotosViewController ()

@end

@implementation UploadPhotosViewController

@synthesize checkbox;

- (void)viewDidLoad {
    [super viewDidLoad];
    checked = NO;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkboxButton:(id)sender {
    if (!checked) {
        [checkbox setImage: [UIImage imageNamed: @"Unchecked Checkbox-50.png"] forState: UIControlStateNormal];
        checked = YES;
    }
    
    else if (checked) {
        [checkbox setImage: [UIImage imageNamed: @"Checked Checkbox-50.png"] forState: UIControlStateNormal];
        checked = NO;
    }
}
- (IBAction)pic1Box:(id)sender {
}
- (IBAction)pic1Button:(id)sender {
}

- (IBAction)pic2Button:(id)sender {
}

- (IBAction)pic3Button:(id)sender {
}

- (IBAction)pic4Button:(id)sender {
}

- (IBAction)pic5Button:(id)sender {
}

- (IBAction)pic6Button:(id)sender {
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
