//
//  XYUIKit.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/3.
//

#import <Foundation/Foundation.h>

#import "XYUILabel.h"
#import "XYUIButton.h"
#import "XYUIView.h"

NS_ASSUME_NONNULL_BEGIN

@interface XYUIKit : NSObject

/**
 创建带背景色的view
 @param bgColor bgColor description
*/
+ (XYUIView *)initWithBgColor:(UIColor *)bgColor;

/**
 创建带标题的label，可设置字体颜色、字体大小
 @param string <#string description#>
 @param textColor <#textColor description#>
 @param fontValue <#fontValue description#>
*/
+ (XYUILabel *)initWithString:(NSString *)string textColor:(UIColor *)textColor fontValue:(CGFloat)fontValue;

/**
 创建带标题的label，可设置字体颜色、字体大小，字占位置
 @param string <#string description#>
 @param textColor <#textColor description#>
 @param fontValue <#fontValue description#>
 @param textAlignment <#textAlignment description#>
*/
+ (XYUILabel *)initWithString:(NSString *)string textColor:(UIColor *)textColor fontValue:(CGFloat)fontValue textAlignment:(UITextAlignment)textAlignment;

/**
 创建带标题的button 可设置标题颜色，带有点击事件
 @param title <#title description#>
 @param titleColor <#titleColor description#>
 @param target <#target description#>
*/
+ (XYUIButton *)initWithTitle:(NSString *)title titleColor:(UIColor *)titleColor target:(id)target seletor:(SEL)seletor;

/**
 创建带标题的button 可设置标题正常、高亮颜色，带有点击事件
 @param title <#title description#>
 @param titleNormalColor <#titleNormalColor description#>
 @param titleHeighColor <#titleHeighColor description#>
 @param target <#target description#>
 */
+ (XYUIButton *)initWithTitle:(NSString *)title titleNormalColor:(UIColor *)titleNormalColor titleHeighColor:(UIColor *)titleHeighColor target:(id)target seletor:(SEL)seletor;

/**
 创建带标题、点击事件的button，可设置背景图，正常图。选中图
 @param title <#title description#>
 @param titleColor <#titleColor description#>
 @param normalImg <#normalImg description#>
 @param selectedImg <#selectedImg description#>
 @param target <#target description#>
*/
+ (XYUIButton *)initWithTitle:(NSString *)title titleColor:(UIColor *)titleColor normalImg:(UIImage *)normalImg selectedImg:(UIImage *)selectedImg target:(id)target seletor:(SEL)seletor;

/**
 创建仅带有背景图的button
 @param normalImg <#normalImg description#>
 @param selectedImg <#selectedImg description#>
 @param target <#target description#>
 */
+ (XYUIButton *)initWithNormalImg:(UIImage *)normalImg selectedImg:(UIImage *)selectedImg target:(id)target seletor:(SEL)seletor;


@end

NS_ASSUME_NONNULL_END
