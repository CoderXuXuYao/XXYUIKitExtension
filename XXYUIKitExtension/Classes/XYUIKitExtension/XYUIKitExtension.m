//
//  XYUIKitExtension.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import "XYUIKitExtension.h"

@implementation XYUIKitExtension

+ (instancetype)shareInstance{
    static XYUIKitExtension *xyUIKitExtension = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        xyUIKitExtension = [[XYUIKitExtension alloc] init];
    });
    return xyUIKitExtension;
}

#pragma mark -- UI
// 创建带背景色的view
- (XYUIView *)initWithBgColor:(UIColor *)bgColor{
    return [XYUIKit initWithBgColor:bgColor];
}

// 创建带标题的label，可设置字体颜色、字体大小
- (XYUILabel *)initWithString:(NSString *)string
                    textColor:(UIColor *)textColor
                    fontValue:(CGFloat)fontValue{
    return [XYUIKit initWithString:string textColor:textColor fontValue:fontValue];
}

// 创建带标题的label，可设置字体颜色、字体大小，字占位置
- (XYUILabel *)initWithString:(NSString *)string
                    textColor:(UIColor *)textColor
                    fontValue:(CGFloat)fontValue
                textAlignment:(UITextAlignment)textAlignment{
    return [XYUIKit initWithString:string textColor:textColor fontValue:fontValue textAlignment:textAlignment];
}

// 创建带标题的button 可设置标题颜色，带有点击事件
- (XYUIButton *)initWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                       target:(id)target
                      seletor:(SEL)seletor{
    return [XYUIKit initWithTitle:title titleColor:titleColor target:target seletor:seletor];
}

// 创建带标题的button 可设置标题正常、高亮颜色，带有点击事件
- (XYUIButton *)initWithTitle:(NSString *)title
             titleNormalColor:(UIColor *)titleNormalColor
              titleHeighColor:(UIColor *)titleHeighColor
                       target:(id)target
                      seletor:(SEL)seletor{
    return [XYUIKit initWithTitle:title titleNormalColor:titleNormalColor titleHeighColor:titleHeighColor target:target seletor:seletor];
}

// 创建带标题、点击事件的button，可设置背景图，正常图。选中图
- (XYUIButton *)initWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                    normalImg:(UIImage *)normalImg
                  selectedImg:(UIImage *)selectedImg
                       target:(id)target
                      seletor:(SEL)seletor{
    return [XYUIKit initWithTitle:title titleColor:titleColor normalImg:normalImg selectedImg:selectedImg target:target seletor:seletor];
}

// 创建仅带有背景图的button
- (XYUIButton *)initWithNormalImg:(UIImage *)normalImg
                      selectedImg:(UIImage *)selectedImg
                           target:(id)target
                          seletor:(SEL)seletor{
    return [XYUIKit initWithNormalImg:normalImg selectedImg:selectedImg target:target seletor:seletor];
}


#pragma mark -- util

@end
