//
//  AgesRangeViewController.h
//  ASLfishies
//
//  Created by Casey Wood on 8/5/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AgesRangeViewController : UIViewController
{
IBOutlet UILabel *age1;

IBOutlet UILabel *age2;
}
- (IBAction)slidervaluechanged:(UISlider *)sender;
- (IBAction)slidervaluechanged2:(UISlider *)sender;

@end
