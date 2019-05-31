//
//  CustomNavigationController.m
//  TestNavigationController
//
//  Created by shangshuai on 2019/5/31.
//  Copyright © 2019 ink. All rights reserved.
//

#import "CustomNavigationController.h"
#import "NavigationRootViewController.h"

@interface CustomNavigationController ()

@end

@implementation CustomNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NavigationRootViewController *root = [[NavigationRootViewController alloc]init];
    self.viewControllers = @[root];
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
