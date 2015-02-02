//
//  Role.h
//  PssingTapExample
//
//  Created by Manuel Meyer on 01.02.15.
//  Copyright (c) 2015 com.vs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Role : NSObject
@property (nonatomic,copy, readonly) NSString *name;

-(instancetype)initWithName:(NSString *)name;
@end
