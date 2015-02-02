//
//  SecondViewController.m
//  PssingTapExample
//
//  Created by Manuel Meyer on 01.02.15.
//  Copyright (c) 2015 com.vs. All rights reserved.
//

#import "RoleViewController.h"

#import "RoleDatasource.h"

@interface RoleViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation RoleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    RoleDatasource *roleDataSource = (RoleDatasource *)[self.tableView dataSource];
    [roleDataSource setRoleSelector:^(Role *role) {
        self.selectedRole(role);
    }];
}

@end
