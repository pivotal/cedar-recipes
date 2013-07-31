//
//  BDDAppDelegate.m
//  Recipes
//
//  Created by pivotal on 7/24/13.
//  Copyright (c) 2013 Pivotal Labs. All rights reserved.
//

#import "BDDAppDelegate.h"
#import "BDDRecipesViewController.h"

@implementation BDDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[BDDRecipesViewController alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
