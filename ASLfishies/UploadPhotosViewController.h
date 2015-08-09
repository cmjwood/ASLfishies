//
//  UploadPhotosViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UploadPhotosViewController : UIViewController

{
    BOOL checked;
}
@property (weak, nonatomic) IBOutlet UIButton *pic1Box;
@property (weak, nonatomic) IBOutlet UIButton *pic2Box;
@property (weak, nonatomic) IBOutlet UIButton *pic3Box;
@property (weak, nonatomic) IBOutlet UIButton *pic4Box;
@property (weak, nonatomic) IBOutlet UIButton *pic5Box;
@property (weak, nonatomic) IBOutlet UIButton *pic6Box;



- (IBAction)pic1Button:(id)sender;
- (IBAction)pic2Button:(id)sender;
- (IBAction)pic3Button:(id)sender;
- (IBAction)pic4Button:(id)sender;
- (IBAction)pic5Button:(id)sender;
- (IBAction)pic6Button:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *checkbox;
- (IBAction)checkboxButton:(id)sender;

@end
