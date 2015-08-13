//
//  IntroViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IntroViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;
@property (weak, nonatomic) IBOutlet UIButton *changePhotoButton;
- (IBAction)changePhotoTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *fullInformation;
@property (weak, nonatomic) IBOutlet UITextView *aboutYouBox;
@property (weak, nonatomic) IBOutlet UILabel *maxCharacters;

- (IBAction)backgroundTap:(id)sender;

// You have to subclass each cell and put the outlets in the subclass of that cell that the property belongs to.

// Example your first cell is your image cell so you need to put your UIView and your button in that class. Then you will need another class for each other custom cell that you have.


@end
