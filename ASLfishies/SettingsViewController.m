//
//  SettingsViewController.m
//  ASLfish
//
//  Created by Casey Wood on 8/15/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "SettingsViewController.h"


@interface SettingsViewController () <UITextFieldDelegate>

@end

@implementation SettingsViewController

@synthesize deaf, hofh, hearing, beginning, average, fluent, male, female, any;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)deafTapped:(id)sender {
    if (!deaf.selected) {
        hofh.selected = NO;
        deaf.selected = YES;
        hearing.selected = NO;
    }
}


- (IBAction)hofhTapped:(id)sender {
    if (!hofh.selected) {
        hofh.selected = YES;
        deaf.selected = NO;
        hearing.selected = NO;
    }
    
}

- (IBAction)hearingTapped:(id)sender {
    if (!hearing.selected) {
        hofh.selected = NO;
        deaf.selected = NO;
        hearing.selected = YES;
    }
    
}
- (IBAction)beginningTapped:(id)sender {
    if (!beginning.selected) {
        beginning.selected = YES;
        average.selected = NO;
        fluent.selected = NO;
    }
   
}

- (IBAction)averageTapped:(id)sender {
    if (!average.selected) {
        beginning.selected = NO;
        average.selected = YES;
        fluent.selected = NO;
    }
    
}

- (IBAction)fluentTapped:(id)sender {
    if (!fluent.selected) {
        beginning.selected = NO;
        average.selected = NO;
        fluent.selected = YES;
    }
 
}
- (IBAction)maleTapped:(id)sender {
    if (!male.selected) {
        male.selected = YES;
        any.selected = NO;
        female.selected = NO;
    }
}

- (IBAction)anyTapped:(id)sender {
    if (!any.selected) {
        any.selected = YES;
        male.selected = NO;
        female.selected = NO;
    }
}

- (IBAction)femaleTapped:(id)sender {
    if (!female.selected) {
        female.selected = YES;
        any.selected = NO;
        male.selected = NO;
    }
    
}
@end


