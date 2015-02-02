//
//  RoleDatasource.m
//  PssingTapExample
//
//  Created by Manuel Meyer on 01.02.15.
//  Copyright (c) 2015 com.vs. All rights reserved.
//

#import "RoleDatasource.h"
#import "Role.h"

@interface RoleDatasource ()
@property (nonatomic,strong) NSArray *roles;
@end

@implementation RoleDatasource
- (instancetype)init
{
    self = [super init];
    if (self) {
        _roles = @[[[Role alloc] initWithName:@"Magician"], [[Role alloc] initWithName:@"Soldier"], [[Role alloc] initWithName:@"Maid"]];
    }
    return self;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.roles.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"RoleCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.textLabel.text = [self.roles[indexPath.row] name];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.roleSelector(self.roles[indexPath.row]);
}

@end
