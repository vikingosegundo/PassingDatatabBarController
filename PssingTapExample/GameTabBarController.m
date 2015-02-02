//
//  GameTabBarController.m
//  PssingTapExample
//
//  Created by Manuel Meyer on 01.02.15.
//  Copyright (c) 2015 com.vs. All rights reserved.
//

#import "GameTabBarController.h"
#import "RoleViewController.h"

@interface GameTabBarController () <UITabBarControllerDelegate>
@end

@implementation GameTabBarController

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.delegate = self;
}

-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    if ([viewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navController = (UINavigationController *)viewController;
        if ([navController.topViewController isKindOfClass:[RoleViewController class]]) {
            RoleViewController *rvc = (RoleViewController *)[navController topViewController];
            [rvc setSelectedRole:^(Role *role) {
                UIViewController *viewController = self.viewControllers[0];
                [viewController setValue:role forKey:@"role"];
                [self setSelectedIndex:0];
            }];
        }
    }
    return YES;
}

@end
