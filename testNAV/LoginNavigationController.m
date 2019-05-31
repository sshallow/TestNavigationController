//
//  LoginNavigationController.m
//  StockWatch
//
//  Created by shangshuai on 2019/4/11.
//  Copyright © 2019 shangshuai. All rights reserved.
//

#import "LoginNavigationController.h"
#import "LoginWayViewController.h"
#import "LoginViewController.h"

@interface LoginNavigationController ()

@end

@implementation LoginNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title  = @"nav";
    self.navigationBar.barTintColor = [UIColor colorWithRed:26/255.0 green:33/255.0 blue:46/255.0 alpha:1];
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    LoginWayViewController *monitorViewController = [[LoginWayViewController alloc]init];
    self.viewControllers = @[monitorViewController];
}
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
