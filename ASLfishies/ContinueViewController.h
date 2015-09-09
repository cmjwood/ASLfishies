//
//  ContinueViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/12/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ViewController.h"

@interface ContinueViewController : UIViewController
{
    BOOL checked, deafTapped, hofhTapped, hearingTapped, beginningTapped, averageTapped, fluentTapped, maleTapped, anyTapped, femaleTapped;
}

@property (weak, nonatomic) IBOutlet UILabel *levelOfSignLang;
@property (weak, nonatomic) IBOutlet UIButton *deaf;
@property (weak, nonatomic) IBOutlet UIButton *hofh;
@property (weak, nonatomic) IBOutlet UIButton *hearing;
- (IBAction)deafTapped:(id)sender;
- (IBAction)hofhTapped:(id)sender;
- (IBAction)hearingTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *beginning;
@property (weak, nonatomic) IBOutlet UIButton *average;
@property (weak, nonatomic) IBOutlet UIButton *fluent;
- (IBAction)beginningTapped:(id)sender;
- (IBAction)averageTapped:(id)sender;
- (IBAction)fluentTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *male;
@property (weak, nonatomic) IBOutlet UIButton *any;
@property (weak, nonatomic) IBOutlet UIButton *female;
- (IBAction)maleTapped:(id)sender;
- (IBAction)anyTapped:(id)sender;
- (IBAction)femaleTapped:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *lookingfor;

@property (weak, nonatomic) IBOutlet UILabel *levelofDeafness;
@property (weak, nonatomic) IBOutlet UIButton *checkbox;

- (IBAction)checkboxButton:(id)sender;


@end
