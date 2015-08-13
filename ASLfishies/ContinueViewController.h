//
//  ContinueViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/12/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ViewController.h"

@interface ContinueViewController : UITableViewController
{
    BOOL checked;
}

@property (weak, nonatomic) IBOutlet UIButton *checkbox;
- (IBAction)checkboxButton:(id)sender;

@end
