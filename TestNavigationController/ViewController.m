//
//  ViewController.m
//  TestNavigationController
//
//  Created by shangshuai on 2019/5/31.
//  Copyright © 2019 ink. All rights reserved.
//

#import "ViewController.h"
#import "CustomNavigationController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 250, 100)];
    [btn setBackgroundColor:[UIColor grayColor]];
    [btn setTitle:@"First" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(UIButton *)btn {
    CustomNavigationController *navigationController = [[CustomNavigationController alloc]init];
    [self presentViewController:navigationController animated:YES completion:nil];
}

@end
