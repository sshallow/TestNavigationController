//
//  LoginWayViewController.m
//  StockWatch
//
//  Created by shangshuai on 2019/4/10.
//  Copyright © 2019 shangshuai. All rights reserved.
//

#import "LoginWayViewController.h"
#import "LoginViewController.h"


@interface LoginWayViewController ()<UINavigationControllerDelegate,UIScrollViewDelegate>

@property (nonatomic, strong) UIButton *faceBookButton;

@property (nonatomic, strong) UIButton *emailButton;

@property (nonatomic, strong) UIButton *login;

@property (nonatomic, strong) UIScrollView *scrollView;


@end

@implementation LoginWayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:31/255.0 green:33/255.0 blue:43/255.0 alpha:1];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:26/255.0 green:33/255.0 blue:46/255.0 alpha:1];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    self.navigationController.delegate = self;
    self.title  = @"b";
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    [btn setBackgroundColor:[UIColor grayColor]];
    [btn setTitle:@"push to c" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(UIButton *)btn {
    NSLog(@"*****按钮点击*****");
    [self.navigationController pushViewController:[[LoginViewController alloc]init] animated:YES];
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
