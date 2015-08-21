//
//  Intro.h
//  ASLfish
//
//  Created by Casey Wood on 8/19/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "Foundation/Foundation.h"
#import <Parse/Parse.h>

@interface Intro : PFObject <PFSubclassing>

@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *age;
@property (nonatomic, strong) NSString *cityState;
@property (nonatomic, strong) NSString *aboutYou;


@end
