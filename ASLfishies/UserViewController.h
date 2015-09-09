//
//  UserViewController.h
//  ASLfish
//
//  Created by Casey Wood on 8/18/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ViewController.h"

@interface UserViewController : ViewController

{
    BOOL tapped;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *thumbDown;
@property (weak, nonatomic) IBOutlet UIButton *sendMessage;
@property (weak, nonatomic) IBOutlet UIButton *thumbUp;
- (IBAction)thumbDownTapped:(id)sender;
- (IBAction)thumbUpTapped:(id)sender;

- (IBAction)sendMessageTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *fullInformation;
@property (weak, nonatomic) IBOutlet UITextView *aboutYouBox;

@end
