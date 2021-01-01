//
//  XYUIKitExtension.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import "XYUIKitExtension.h"

@implementation XYUIKitExtension

// 创建带背景色的view
+ (XYUIView *)initWithBgColor:(UIColor *)bgColor{
    XYUIView *view = [[XYUIView alloc] init];
    view.backgroundColor = bgColor;
    return view;
}

// 创建带标题的label，可设置字体颜色、字体大小
+ (XYUILabel *)initWithString:(NSString *)string
                    textColor:(UIColor *)textColor
                    fontValue:(CGFloat)fontValue{
    XYUILabel *label = [[XYUILabel alloc] init];
    label.text = string;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:fontValue];
    return label;
}

// 创建带标题的label，可设置字体颜色、字体大小，字占位置
+ (XYUILabel *)initWithString:(NSString *)string
                    textColor:(UIColor *)textColor
                    fontValue:(CGFloat)fontValue
                textAlignment:(UITextAlignment)textAlignment{
    XYUILabel *label = [[XYUILabel alloc] init];
    label.text = string;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:fontValue];
    label.textAlignment = textAlignment;
    return label;
}

// 创建带标题的button 可设置标题颜色，带有点击事件
+ (XYUIButton *)initWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                       target:(id)target
                      seletor:(SEL)seletor{
    XYUIButton *button = [[XYUIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:title forState:UIControlStateNormal];
    [button addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
    return button;
}

// 创建带标题的button 可设置标题正常、高亮颜色，带有点击事件
+ (XYUIButton *)initWithTitle:(NSString *)title
             titleNormalColor:(UIColor *)titleNormalColor
              titleHeighColor:(UIColor *)titleHeighColor
                       target:(id)target
                      seletor:(SEL)seletor{
    XYUIButton *button = [[XYUIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleNormalColor forState:UIControlStateNormal];
    [button setTitleColor:titleHeighColor forState:UIControlStateHighlighted];
    [button addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
    return button;
}

// 创建带标题、点击事件的button，可设置背景图，正常图。选中图
+ (XYUIButton *)initWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                    normalImg:(UIImage *)normalImg
                  selectedImg:(UIImage *)selectedImg
                       target:(id)target
                      seletor:(SEL)seletor{
    XYUIButton *button = [[XYUIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setImage:normalImg forState:UIControlStateNormal];
    [button setImage:selectedImg forState:UIControlStateSelected];
    [button addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
    return button;
}

// 创建仅带有背景图的button
+ (XYUIButton *)initWithNormalImg:(UIImage *)normalImg
                      selectedImg:(UIImage *)selectedImg
                           target:(id)target
                          seletor:(SEL)seletor{
    XYUIButton *button = [[XYUIButton alloc] init];
    [button setImage:normalImg forState:UIControlStateNormal];
    [button setImage:selectedImg forState:UIControlStateSelected];
    [button addTarget:target action:seletor forControlEvents:UIControlEventTouchUpInside];
    return button;
}

#pragma mark -- pravite method

- (void)xyHandleWithSender:(UIButton *)sender{
    
}

@end
