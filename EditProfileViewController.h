//
//  EditProfileViewController.h
//  ASLfish
//
//  Created by Casey Wood on 8/15/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditProfileViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (weak, nonatomic) IBOutlet UIButton *changePhotoButton;
@property (weak, nonatomic) IBOutlet UILabel *fullInformation;
@property (weak, nonatomic) IBOutlet UITextView *aboutYouBox;
@property (weak, nonatomic) IBOutlet UILabel *maxCharacters;
@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;

- (IBAction)backgroundTap:(id)sender;
- (IBAction)changeButtonTapped:(id)sender;

@end
