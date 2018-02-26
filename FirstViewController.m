//
//  FirstViewController.m
//  继承
//
//  Created by GavinHe on 2018/1/4.
//  Copyright © 2018年 Liu Chunyu. All rights reserved.
//

#import "FirstViewController.h"
#import "BaseView.h"
@interface FirstViewController ()
@property(nonatomic,strong)BaseView *baseView;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor brownColor];
    
    _baseView = [[BaseView alloc]initWithFrame:CGRectMake(10, 50, self.view.frame.size.width, 500)];
    _baseView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_baseView];
    
    __block typeof(self) weakSelf = self;//block防止循环引用
    _baseView.backButtonblock = ^{
        NSLog(@"返回");
        [weakSelf dismissViewControllerAnimated:YES completion:nil];
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
