//
//  UserViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/11/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ViewController.h"

@interface UserViewController : UITableViewController
{
    BOOL tapped;
}
@property (weak, nonatomic) IBOutlet UIButton *thumbDown;
@property (weak, nonatomic) IBOutlet UIButton *sendMessage;
@property (weak, nonatomic) IBOutlet UIButton *thumbUp;
- (IBAction)thumbDownTapped:(id)sender;
- (IBAction)sendMessageTapped:(id)sender;
- (IBAction)thumbUpTapped:(id)sender;

@end
