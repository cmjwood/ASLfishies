//
//  Intro.m
//  ASLfish
//
//  Created by Casey Wood on 8/19/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "Intro.h"
#import <Parse/PFObject+Subclass.h>

@implementation Intro

@synthesize fullName, age, cityState, aboutYou;

+ (NSString *)parseClassName {
    return @"Intro";
}

@end
