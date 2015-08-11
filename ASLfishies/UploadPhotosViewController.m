//
//  UploadPhotosViewController.m
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "UploadPhotosViewController.h"

@interface UploadPhotosViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@end

@implementation UploadPhotosViewController

@synthesize checkbox;
@synthesize imagePicker;


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkboxButton:(id)sender {
    if (!checked) {
        [checkbox setImage: [UIImage imageNamed: @"Unchecked Checkbox-50.png"] forState: UIControlStateNormal];
        checked = YES;
    }
    
    else if (checked) {
        [checkbox setImage: [UIImage imageNamed: @"Checked Checkbox-50.png"] forState: UIControlStateNormal];
        checked = NO;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonPic:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        self.imagePicker = [[UIImagePickerController alloc] init];
        self.imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    else{
        self.imagePicker = [[UIImagePickerController alloc] init];
        self.imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [self.imagePicker setAllowsEditing : YES];
        self.imagePicker.delegate = self;
      [self presentViewController:imagePicker animated:YES completion:nil];
    }
    
}

-(void) imagePickerController: (UIImagePickerController *)picker didFinishPickingMediaWithInfor:(NSDictionary *)info
{
    UIImage *img = [info objectForKey:UIImagePickerControllerOriginalImage];
[self presentViewController:picker animated:YES completion:nil];
    self.imagView.image = img;
}
@end
