//
//  UIButton+Extention.m
//  MultipleSelectCell
//
//  Created by 段盛武 on 16/8/14.
//  Copyright © 2016年 D.James. All rights reserved.
//

#import "UIButton+Extention.h"

@implementation UIButton (Extention)

+ (instancetype)buttonWithImage:(NSString *)image title:(NSString *)title target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_hightlighted.png",image]] forState:UIControlStateHighlighted];
    [button setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected.png",image]] forState:UIControlStateSelected];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

@end
