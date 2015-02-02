//
//  FirstViewController.m
//  PssingTapExample
//
//  Created by Manuel Meyer on 01.02.15.
//  Copyright (c) 2015 com.vs. All rights reserved.
//

#import "PlayViewController.h"
#import "Role.h"

@interface PlayViewController ()
@property (weak, nonatomic) IBOutlet UILabel *roleNameLabel;

@end

@implementation PlayViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.roleNameLabel.text = (self.role) ? self.role.name : self.roleNameLabel.text;
}

@end
