//
//  BDDRecipesViewController.m
//  Recipes
//
//  Created by pivotal on 7/25/13.
//  Copyright (c) 2013 Pivotal Labs. All rights reserved.
//

#import "BDDRecipesViewController.h"

@interface BDDRecipesViewController ()

@end

@implementation BDDRecipesViewController

- (void)viewDidLoad {
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.recipes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];

    cell.textLabel.text = self.recipes[indexPath.row];
    
    return cell;
}


#pragma mark - Table view delegate


@end
