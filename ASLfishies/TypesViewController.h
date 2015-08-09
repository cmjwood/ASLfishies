//
//  TypesViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TypesViewController : UIViewController
{
    BOOL tapped;
}
@property (weak, nonatomic) IBOutlet UIButton *anyCircle;
@property (weak, nonatomic) IBOutlet UIButton *maleCircle;
@property (weak, nonatomic) IBOutlet UIButton *femaleCircle;
@property (weak, nonatomic) IBOutlet UIButton *deafCircle;
@property (weak, nonatomic) IBOutlet UIButton *codaCircle;
@property (weak, nonatomic) IBOutlet UIButton *hofhCircle;
@property (weak, nonatomic) IBOutlet UIButton *hearingCircle;
@property (weak, nonatomic) IBOutlet UILabel *anyLabel;
@property (weak, nonatomic) IBOutlet UILabel *maleLabel;
@property (weak, nonatomic) IBOutlet UILabel *femaleLabel;
@property (weak, nonatomic) IBOutlet UILabel *deafLabel;
@property (weak, nonatomic) IBOutlet UILabel *codaLabel;
@property (weak, nonatomic) IBOutlet UILabel *hofhLabel;
@property (weak, nonatomic) IBOutlet UILabel *hearingLabel;
- (IBAction)anyButton:(id)sender;
- (IBAction)maleButton:(id)sender;
- (IBAction)femaleButton:(id)sender;
- (IBAction)deafButton:(id)sender;
- (IBAction)codaButton:(id)sender;
- (IBAction)hofhButton:(id)sender;
- (IBAction)hearingButton:(id)sender;

@end
