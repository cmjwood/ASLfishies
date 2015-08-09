//
//  IntroTableViewCell.m
//  ASLfishies
//
//  Created by Casey Wood on 8/6/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "IntroTableViewCell.h"

@implementation IntroTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

-(IBAction)textFieldTypes:(id)sender {
    NSLog(@"A person typing intro");
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
