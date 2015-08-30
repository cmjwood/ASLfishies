//
//  ContinueViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/12/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ContinueViewController.h"


@interface ContinueViewController () <UITextFieldDelegate>



@end

@implementation ContinueViewController

@synthesize checkbox, deaf, hofh, hearing, beginning, average, fluent, male, female, any;

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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)deafTapped:(id)sender {
    if (!deafTapped) {
        [deaf setImage: [UIImage imageNamed: @"Not Hearing-50.png"] forState: UIControlStateNormal];
        deafTapped = YES;
    }
    
    else if (deafTapped) {
        [deaf setImage: [UIImage imageNamed: @"deaf circle.png"] forState: UIControlStateNormal];
        deafTapped = NO;
    }
}


- (IBAction)hofhTapped:(id)sender {
    if (!hofhTapped) {
        [hofh setImage: [UIImage imageNamed: @" Hearing Aid-50.png"] forState: UIControlStateNormal];
        hofhTapped = YES;
    }
    
    else if (hofhTapped) {
        [hofh setImage: [UIImage imageNamed: @"hofh circle.png"] forState: UIControlStateNormal];
        hofhTapped = NO;
    }
}

- (IBAction)hearingTapped:(id)sender {
    if (!hearingTapped) {
        [hearing setImage: [UIImage imageNamed: @"Hearing-50-2.png"] forState: UIControlStateNormal];
        hearingTapped = YES;
    }
    
    else if (hearingTapped) {
        [deaf setImage: [UIImage imageNamed: @"hearing circle.png"] forState: UIControlStateNormal];
        hearingTapped = NO;
    }
}
- (IBAction)beginningTapped:(id)sender {
    if (!beginningTapped) {
        [beginning setTitle:@"Beginning" forState:UIControlStateNormal];
        beginningTapped = YES;
        }
    
    else if (beginningTapped) {
        [beginning setImage: [UIImage imageNamed: @"Beginning Circle.png"] forState: UIControlStateNormal];
        beginningTapped = NO;
    }
}

- (IBAction)averageTapped:(id)sender {
    if (!averageTapped) {
        [average setTitle:@"Average" forState:UIControlStateNormal];
        averageTapped = YES;
    }
    
    else if (averageTapped) {
        [average setImage: [UIImage imageNamed: @"Average Circle.png"] forState: UIControlStateNormal];
        averageTapped = NO;
    }
    
}

- (IBAction)fluentTapped:(id)sender {
    if (!fluentTapped) {
        [fluent setTitle:@"Fluent" forState:UIControlStateNormal];
        fluentTapped = YES;
    }
    
    else if (fluentTapped) {
        [fluent setImage: [UIImage imageNamed: @"Fluent Circle.png"] forState: UIControlStateNormal];
        fluentTapped = NO;
    }
}
- (IBAction)male:(id)sender {
    if (!maleTapped) {
        [male setImage: [UIImage imageNamed: @"User Male-50 copy.png"] forState: UIControlStateNormal];
        maleTapped = YES;
    }
    
    else if (maleTapped) {
        [male setImage: [UIImage imageNamed: @"Male Circle.png"] forState: UIControlStateNormal];
        maleTapped = NO;
    }
}

- (IBAction)any:(id)sender {
    if (!anyTapped) {
        [any setTitle:@"Any" forState:UIControlStateNormal];
        anyTapped = YES;
    }
    
    else if (anyTapped) {
        [female setImage: [UIImage imageNamed: @"Any.png"] forState: UIControlStateNormal];
        femaleTapped = NO;
    }
    
}

- (IBAction)femaleTapped:(id)sender {
    if (!femaleTapped) {
        [female setImage: [UIImage imageNamed: @"User Female-50 copy.png"] forState: UIControlStateNormal];
        femaleTapped = YES;
    }
    
    else if (femaleTapped) {
        [female setImage: [UIImage imageNamed: @"Female Circle.png"] forState: UIControlStateNormal];
        femaleTapped = NO;
    }

}
@end
