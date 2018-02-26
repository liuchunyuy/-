//
//  BaseView.m
//  继承
//
//  Created by GavinHe on 2018/1/4.
//  Copyright © 2018年 Liu Chunyu. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        _label.backgroundColor = [UIColor orangeColor];
        _label.text = @"选择产品";
        _label.textAlignment = NSTextAlignmentCenter;
        _label.font = [UIFont systemFontOfSize:20];
        [self addSubview:_label];
        
        _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _backButton.frame = CGRectMake(0, 0, 100, 50);
        [_backButton setTitle:@"返回" forState:UIControlStateNormal];
        [_backButton setImage:[UIImage imageNamed:@"back_button@2x"] forState:UIControlStateNormal];
        _backButton.imageEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 60);
        //button标题的偏移量，这个偏移量是相对于图片的
        _backButton.titleEdgeInsets = UIEdgeInsetsMake(0, -30, 0, 0);   // -30，远30
        _backButton.backgroundColor = [UIColor clearColor];
        [_backButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_backButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [_backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        _backButton.titleLabel.font = [UIFont systemFontOfSize:19];
        [self addSubview:_backButton];
    }
    return self;
}

-(void)back{
    if (self.backButtonblock) {
        self.backButtonblock();
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
