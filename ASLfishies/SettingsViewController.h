//
//  SettingsViewController.h
//  ASLfish
//
//  Created by Casey Wood on 8/15/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ViewController.h"

@interface SettingsViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UIImageView *hearingImage;
@property (weak, nonatomic) IBOutlet UISlider *levelOfDeafSlider;
- (IBAction)lodSlider:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *levelOfSignLang;
@property (weak, nonatomic) IBOutlet UISlider *loslSlider;
- (IBAction)levelOfSignLangSlider:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lookingfor;
- (IBAction)lookingForSlider:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *deafImage;
@property (weak, nonatomic) IBOutlet UILabel *levelofDeafness;
@property (weak, nonatomic) IBOutlet UIImageView *femaleImage;
@property (weak, nonatomic) IBOutlet UILabel *any;
@property (weak, nonatomic) IBOutlet UIImageView *male;
@property (weak, nonatomic) IBOutlet UISlider *lookingForSlider;


@end
