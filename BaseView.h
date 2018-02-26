//
//  BaseView.h
//  继承
//
//  Created by GavinHe on 2018/1/4.
//  Copyright © 2018年 Liu Chunyu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^backButtonblock)(void);

@interface BaseView : UIView

@property(nonatomic, strong)UILabel *label;
@property(nonatomic,strong)UIButton *backButton;
@property(nonatomic,copy)backButtonblock backButtonblock;

@end
