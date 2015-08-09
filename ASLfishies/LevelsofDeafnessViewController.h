//
//  LevelsofDeafnessViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LevelsofDeafnessViewController : UIViewController

{
    BOOL tapped;
}

@property (weak, nonatomic) IBOutlet UIButton *deafCircle;
@property (weak, nonatomic) IBOutlet UIButton *hofhCircle;
@property (weak, nonatomic) IBOutlet UIButton *codaCircle;
@property (weak, nonatomic) IBOutlet UIButton *hearingCircle;
@property (weak, nonatomic) IBOutlet UILabel *deafLabel;
@property (weak, nonatomic) IBOutlet UILabel *hofhLabel;
@property (weak, nonatomic) IBOutlet UILabel *codaLabel;
@property (weak, nonatomic) IBOutlet UILabel *hearingLabel;

- (IBAction)deafTapped:(UIButton *)sender;
- (IBAction)hofhTapped:(UIButton *)sender;
- (IBAction)codaTapped:(UIButton *)sender;
- (IBAction)hearingTapped:(UIButton *)sender;

@end
