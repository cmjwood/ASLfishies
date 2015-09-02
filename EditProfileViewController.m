//
//  EditProfileViewController.m
//  ASLfish
//
//  Created by Casey Wood on 8/15/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "EditProfileViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <Parse/Parse.h>


@interface EditProfileViewController () <UITextFieldDelegate, UINavigationBarDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate>



//@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong) NSArray *intro;
@property (nonatomic, strong) NSString *temp;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation EditProfileViewController


@synthesize aboutYouBox, maxCharacters, changePhotoButton;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.temp = @"";
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
            
            imagePicker.sourceType =  UIImagePickerControllerSourceTypeCamera;
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
