//
//  Intro.m
//  ASLfishies
//
//  Created by Casey Wood on 8/7/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "Intro.h"

@implementation Intro

+(instancetype)fullIntro:(NSString *)intros enabled:(BOOL)enabled {
    Intro *intro = [Intro new];
    
    intro.intros = intros;
    intro.enabled = enabled;
    
    return intro;
}

@end
