//
//  Role.m
//  PssingTapExample
//
//  Created by Manuel Meyer on 01.02.15.
//  Copyright (c) 2015 com.vs. All rights reserved.
//

#import "Role.h"

@interface Role ()
@property (nonatomic,copy) NSString *name;
@end

@implementation Role
- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
@end
