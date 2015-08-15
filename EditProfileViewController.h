//
//  EditProfileViewController.h
//  ASLfish
//
//  Created by Casey Wood on 8/15/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ViewController.h"

@interface EditProfileViewController : UITableViewController <UITextFieldDelegate, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (nonatomic, strong)NSString *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *changePhotoButton;
@property (weak, nonatomic) IBOutlet UILabel *fullInformation;
@property (weak, nonatomic) IBOutlet UITextView *aboutYouBox;
@property (weak, nonatomic) IBOutlet UILabel *maxCharacters;

- (IBAction)backgroundTap:(id)sender;
- (IBAction)changeButtonTapped:(id)sender;

@end
