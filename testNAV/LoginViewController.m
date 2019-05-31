//
//  LoginViewController.m
//  StockWatch
//
//  Created by shangshuai on 2019/4/10.
//  Copyright © 2019 shangshuai. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()<UITextFieldDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"c";
    self.view.backgroundColor = [UIColor colorWithRed:31/255.0 green:33/255.0 blue:43/255.0 alpha:1];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    [btn setBackgroundColor:[UIColor grayColor]];
    [btn setTitle:@"back to a" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

- (void)btnClick:(UIButton *)btn {
    NSLog(@"*****按钮点击*****");
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
