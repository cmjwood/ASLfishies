//
//  UploadPhotosViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UploadPhotosViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    BOOL checked;
}

- (IBAction)buttonPic:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *checkbox;
- (IBAction)checkboxButton:(id)sender;
@property (nonatomic, strong) UIImagePickerController *imagePicker;
@property (weak, nonatomic) IBOutlet UIImageView *imagView;

@end
