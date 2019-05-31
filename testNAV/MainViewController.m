//
//  MainViewController.m
//  StockWatch
//
//  Created by shangshuai on 2019/3/28.
//  Copyright © 2019 shangshuai. All rights reserved.
//

#import "MainViewController.h"
#import "LoginWayViewController.h"
#import "LoginNavigationController.h"
@interface MainViewController ()


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Watch";
    self.view.backgroundColor = [UIColor colorWithRed:17/255.0 green:19/255.0 blue:26/255.0 alpha:1];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    [btn setBackgroundColor:[UIColor grayColor]];
    [btn setTitle:@"按钮标题" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(UIButton *)btn {
    NSLog(@"*****按钮点击*****");
    LoginWayViewController *loginnav = [[LoginWayViewController alloc]init];
    [self presentViewController:loginnav animated:YES completion:nil];
}
@end
