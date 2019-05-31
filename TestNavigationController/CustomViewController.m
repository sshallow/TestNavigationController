//
//  CustomViewController.m
//  TestNavigationController
//
//  Created by shangshuai on 2019/5/31.
//  Copyright © 2019 ink. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 250, 100)];
    [btn setBackgroundColor:[UIColor grayColor]];
    [btn setTitle:@"Third (dissMiss)" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 150, 300, 350)];
    label.text = @"I think the use of dissmiss should be CustomNavigationController instead of CustomViewController, because the presentViewController is a CustomNavigationController. CustomViewController in CustomNavigationController should use pop, but why CustomViewController also works with dissmiss.I don't think it should work.";
    label.numberOfLines = 0;
    [self.view addSubview:label];
}

- (void)btnClick:(UIButton *)btn {
    [self dismissViewControllerAnimated:YES completion:nil];
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
