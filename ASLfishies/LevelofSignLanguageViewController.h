//
//  LevelofSignLanguageViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/8/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LevelofSignLanguageViewController : UIViewController
{
    BOOL tapped;
}
@property (weak, nonatomic) IBOutlet UIButton *nativeCircle;
@property (weak, nonatomic) IBOutlet UILabel *nativeLabel;
@property (weak, nonatomic) IBOutlet UIButton *beginningCircle;
@property (weak, nonatomic) IBOutlet UILabel *beginningLabel;
@property (weak, nonatomic) IBOutlet UIButton *averageCircle;
@property (weak, nonatomic) IBOutlet UILabel *averageLabel;
@property (weak, nonatomic) IBOutlet UILabel *advancedLabel;
@property (weak, nonatomic) IBOutlet UIButton *advancedCircle;
- (IBAction)nativeButton:(id)sender;
- (IBAction)beginningButton:(id)sender;
- (IBAction)averageButton:(id)sender;
- (IBAction)advancedButton:(id)sender;



@end
