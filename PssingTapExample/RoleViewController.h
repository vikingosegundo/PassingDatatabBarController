//
//  SecondViewController.h
//  PssingTapExample
//
//  Created by Manuel Meyer on 01.02.15.
//  Copyright (c) 2015 com.vs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Role;
@interface RoleViewController : UIViewController
@property (nonatomic, copy) void(^selectedRole)(Role *role);
@end

