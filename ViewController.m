//
//  ViewController.m
//  继承
//
//  Created by GavinHe on 2018/1/4.
//  Copyright © 2018年 Liu Chunyu. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void)go{
    FirstViewController *vc = [[FirstViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
