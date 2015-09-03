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
    if (!deaf.selected) {
        hofh.selected = NO;
        deaf.selected = YES;
        hearing.selected = NO;
    }
//    if (!deafTapped) {
//        [deaf setImage: [UIImage imageNamed: @"Not Hearing-50.png"] forState: UIControlStateNormal];
//        deafTapped = YES;
//    }
//    
//    else if (deafTapped) {
//        [deaf setImage: [UIImage imageNamed: @"deaf circle.png"] forState: UIControlStateNormal];
//        deafTapped = NO;
//        }
//        [deaf setEnabled:NO];
}


- (IBAction)hofhTapped:(id)sender {
    if (!hofh.selected) {
        hofh.selected = YES;
        deaf.selected = NO;
        hearing.selected = NO;
    }
    
//    if (!hofhTapped) {
//        
//        [hofh setImage: [UIImage imageNamed: @" Hearing Aid-50.png"] forState: UIControlStateNormal];
//        hofhTapped = YES;
//    }
//    
//    else if (hofhTapped) {
//        [hofh setImage: [UIImage imageNamed: @"hofh circle.png"] forState: UIControlStateNormal];
//        hofhTapped = NO;
//    }
//        [hofh setEnabled:YES];
}

- (IBAction)hearingTapped:(id)sender {
    if (!hearing.selected) {
        hofh.selected = NO;
        deaf.selected = NO;
        hearing.selected = YES;
    }
    
    
//    if (!hearingTapped) {
//        [hearing setImage: [UIImage imageNamed: @"Hearing-50-2.png"] forState: UIControlStateNormal];
//        hearingTapped = YES;
//    }
//    
//    else if (hearingTapped) {
//        [deaf setImage: [UIImage imageNamed: @"hearing circle.png"] forState: UIControlStateNormal];
//        hearingTapped = NO;
//    }
}
- (IBAction)beginningTapped:(id)sender {
    if (!beginning.selected) {
        beginning.selected = YES;
        average.selected = NO;
        fluent.selected = NO;
    }
//    if (!beginningTapped) {
//        [beginning setTitle:@"Beginning" forState:UIControlStateNormal];
//        beginningTapped = YES;
//        }
//    
//    else if (beginningTapped) {
//        [beginning setImage: [UIImage imageNamed: @"Beginning Circle.png"] forState: UIControlStateNormal];
//        beginningTapped = NO;
//    }
}

- (IBAction)averageTapped:(id)sender {
    if (!average.selected) {
        beginning.selected = NO;
        average.selected = YES;
        fluent.selected = NO;
    }
//    if (!averageTapped) {
//        [average setTitle:@"Average" forState:UIControlStateNormal];
//        averageTapped = YES;
//    }
//    
//    else if (averageTapped) {
//        [average setImage: [UIImage imageNamed: @"Average Circle.png"] forState: UIControlStateNormal];
//        averageTapped = NO;
//    }
    
}

- (IBAction)fluentTapped:(id)sender {
    if (!fluent.selected) {
        beginning.selected = NO;
        average.selected = NO;
        fluent.selected = YES;
    }
//    if (!fluentTapped) {
//        [fluent setTitle:@"Fluent" forState:UIControlStateNormal];
//        fluentTapped = YES;
//    }
//    
//    else if (fluentTapped) {
//        [fluent setImage: [UIImage imageNamed: @"Fluent Circle.png"] forState: UIControlStateNormal];
//        fluentTapped = NO;
//    }
}
- (IBAction)maleTapped:(id)sender {
    if (!male.selected) {
        male.selected = YES;
        any.selected = NO;
        female.selected = NO;
    }
//    if (!maleTapped) {
//        [male setImage: [UIImage imageNamed: @"User Male-50 copy.png"] forState: UIControlStateNormal];
//        maleTapped = YES;
//    }
//    
//    else if (maleTapped) {
//        [male setImage: [UIImage imageNamed: @"Male Circle.png"] forState: UIControlStateNormal];
//        maleTapped = NO;
//    }
}

- (IBAction)anyTapped:(id)sender {
    if (!any.selected) {
        any.selected = YES;
        male.selected = NO;
        female.selected = NO;
    }
//    if (!anyTapped) {
//        [any setTitle:@"Any" forState:UIControlStateNormal];
//        anyTapped = YES;
//    }
//    
//    else if (anyTapped) {
//        [female setImage: [UIImage imageNamed: @"Any.png"] forState: UIControlStateNormal];
//        femaleTapped = NO;
//    }
//    
}

- (IBAction)femaleTapped:(id)sender {
    if (!female.selected) {
        female.selected = YES;
        any.selected = NO;
        male.selected = NO;
    }
//    if (!femaleTapped) {
//        [female setImage: [UIImage imageNamed: @"User Female-50 copy.png"] forState: UIControlStateNormal];
//        femaleTapped = YES;
//    }
//    
//    else if (femaleTapped) {
//        [female setImage: [UIImage imageNamed: @"Female Circle.png"] forState: UIControlStateNormal];
//        femaleTapped = NO;
//    }

}
@end
