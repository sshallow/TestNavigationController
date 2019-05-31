//
//  NavigationRootViewController.m
//  TestNavigationController
//
//  Created by shangshuai on 2019/5/31.
//  Copyright © 2019 ink. All rights reserved.
//

#import "NavigationRootViewController.h"
#import "CustomViewController.h"

@interface NavigationRootViewController ()

@end

@implementation NavigationRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 250, 100)];
    [btn setBackgroundColor:[UIColor grayColor]];
    [btn setTitle:@"Two (Nav push -> customVC)" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(UIButton *)btn {
    CustomViewController *customViewController = [[CustomViewController alloc]init];
    [self.navigationController pushViewController:customViewController animated:YES];
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
