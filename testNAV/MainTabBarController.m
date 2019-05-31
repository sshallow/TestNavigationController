//
//  MainTabBarController.m
//  StockWatch
//
//  Created by shangshuai on 2019/3/28.
//  Copyright © 2019 shangshuai. All rights reserved.
//

#import "MainTabBarController.h"
#import "MainViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadNavigation];
}

- (void)loadNavigation {
    
    //main导航控制器 && main首页
    UINavigationController *mainNavigation = [[UINavigationController alloc]init];
    MainViewController *mainViewController = [[MainViewController alloc]init];
    mainNavigation.viewControllers = @[mainViewController];
    mainNavigation.navigationBar.barTintColor = [UIColor colorWithRed:26/255.0 green:33/255.0 blue:46/255.0 alpha:1];
    mainNavigation.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    UITabBarItem *mainItem = [[UITabBarItem alloc]initWithTitle:@"Watch" image:[UIImage imageNamed:@"market"] selectedImage:[UIImage imageNamed:@"market"]];
    mainNavigation.tabBarItem = mainItem;
    
    [self setViewControllers:@[mainNavigation]];
}
@end
