//
//  ContinueViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/12/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ContinueViewController.h"

typedef NS_ENUM(NSInteger, TableViewSection) {
    TableViewSectionContinue = 0,
};

@interface ContinueViewController ()

@end

@implementation ContinueViewController 
@synthesize checkbox, levelOfDeafSlider, loslSlider, lookingForSlider;

- (void)viewDidLoad {
    [super viewDidLoad];
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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)lodSlider:(id)sender {
}
- (IBAction)levelOfSignLangSlider:(id)sender {
}
- (IBAction)lookingForSlider:(id)sender {
}
@end
