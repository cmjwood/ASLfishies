//
//  IntroViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "IntroViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <Parse/Parse.h>

@interface IntroViewController () <UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate>

@property (nonatomic, strong) UIImagePickerController *camera;
@property (strong) NSArray *intro;
@property (nonatomic, strong) NSString *temp;

@end

@implementation IntroViewController


@synthesize aboutYouBox, maxCharacters, changePhotoButton;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.temp = @"";
    
    if (self.profileImageData) {
        self.profileImageView.image = [UIImage imageWithData:self.profileImageData];
    }
    if (self.fullNameData) {
        self.fullInformation.text = [NSString stringWithFormat:@"%@,", self.fullNameData];
    }
//    if (self.birthdayDateData) {
//        self.fullInformation.text = [NSString stringWithFormat: @"%@", self.birthdayDateData];
//    }
//
//    if (self.addressData) {
//        self.fullInformation.text = [NSString stringWithFormat:@"%@", self.addressData];
//    }
    
    PFObject *intro = [PFObject objectWithClassName:@"Information"];
    intro [@"fullName"] = @"Christopher Tucker Wood";
    intro [@"age"] = @(27);
    intro [@"cityState"] = @"Mission Viejo, CA";
    intro [@"aboutYou"] = @"I like to work out..";
    [intro saveInBackground];
    
    [intro saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error && succeeded) {
            PFQuery *query = [PFQuery queryWithClassName:@"Intro"];
            [query whereKey:@"fullName" equalTo:@"Christopher Tucker Wood"];
            [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
                if (!error) {
                    NSLog(@"Intro objects: %@", objects);
                    for (PFObject *intro in objects) {
                        NSLog(@"Make: %@", intro [@"fullName"]);
                    }
                } else {
                    NSLog(@"Error finding information objects: %@", error);
                }
            }];
            NSLog(@"Saved information");
        } else {
            NSLog(@"There was an error saving: %@", error);
        }
    }];
    

}




-(void)textViewDidChangeSelection:(UITextView *)textView {

if (self.temp.length <= 139) {
    maxCharacters.text = [NSString stringWithFormat:@"%lu", (unsigned long)aboutYouBox.text.length];
    self.temp = aboutYouBox.text;
}else if (self.temp.length == 140 && aboutYouBox.text.length < 140){
    self.temp = aboutYouBox.text;
    maxCharacters.text = [NSString stringWithFormat:@"%lu", (unsigned long)self.aboutYouBox.text.length];
    maxCharacters.textColor = [UIColor blackColor];
}else {
    // Disallow adding at text count limit
    aboutYouBox.text = self.temp; // you have to use stringWithFormat everytime you re-assign the text value
    aboutYouBox.text = [self.aboutYouBox.text substringToIndex:140];
     self.temp = aboutYouBox.text;
    self.maxCharacters.textColor = [UIColor redColor];
}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

            - (IBAction)backgroundTap:(id)sender {
                
                [aboutYouBox resignFirstResponder];
            
            }
- (IBAction)changeButtonTapped:(id)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    
    UIAlertController *photoActionSheet = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *cameraRollAction = [UIAlertAction actionWithTitle:@"From Library" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        imagePicker.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentViewController:imagePicker animated:YES completion:nil];
    }];
    [photoActionSheet addAction:cameraRollAction];
    
    UIAlertAction *takePictureAction = [UIAlertAction actionWithTitle:@"Take Picture" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        if ([UIImagePickerController isSourceTypeAvailable:
             UIImagePickerControllerSourceTypeCamera] == YES) {
            
            NSArray *availableMediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
            if ([availableMediaTypes containsObject:(NSString *)kUTTypeMovie]) {
            }
            imagePicker.sourceType =  UIImagePickerControllerSourceTypeCamera;
            imagePicker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
            imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModeVideo;
            imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
            imagePicker.allowsEditing = YES;
            
            [self presentViewController:imagePicker animated:YES completion:nil];
            
        } else {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Camera Not Available on Device" message:@"This device does not have a camera option. Please choose photo from library." preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *dismissAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                [self dismissViewControllerAnimated:YES completion:nil];
            }];
            
            [alert addAction:dismissAction];
            
            [self presentViewController:alert animated:YES completion:nil];
        }
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {

    }];
    [photoActionSheet addAction:takePictureAction];
    [photoActionSheet addAction:cancelAction];
    
    [self presentViewController:photoActionSheet animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    // Access the uncropped image from info dictionary
    UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    // Dismiss controller
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    // Set Avatar Image
    self.profileImageView.image = image;
    
    // Any other actions you want to take with the image would go here
    
}





@end
