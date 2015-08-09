//
//  Intro.h
//  ASLfishies
//
//  Created by Casey Wood on 8/7/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Intro : NSObject

@property (strong) NSString *intros;
@property (assign) BOOL enabled;

+(instancetype)fullIntro:(NSString *)intros enabled:(BOOL)enabled;

@end
