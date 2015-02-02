//
//  RoleDatasource.h
//  PssingTapExample
//
//  Created by Manuel Meyer on 01.02.15.
//  Copyright (c) 2015 com.vs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Role;
@interface RoleDatasource : NSObject <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, copy) void(^roleSelector)(Role *role);
@end
