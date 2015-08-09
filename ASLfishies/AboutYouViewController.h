//
//  AboutYouViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutYouViewController : UIViewController  <UITextFieldDelegate> {
    
}
@property (weak, nonatomic) IBOutlet UITextField *aboutyouBox;
@property (weak, nonatomic) IBOutlet UILabel *maxCharacters;
- (IBAction)backgroundTap:(id)sender;

@end
