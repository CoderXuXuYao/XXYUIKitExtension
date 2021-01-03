//
//  UILabel+XYExtension.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (XYExtension)

/// 创建根据文本内容自适应的label
/// @param content <#content description#>
/// @param fontValue <#fontValue description#>
+ (UILabel *)initWithContent:(NSString *)content fontValue:(CGFloat)fontValue;

/// 根据文本内容获取当前label的size
/// @param content <#content description#>
/// @param fontValue <#fontValue description#>
/// @param label <#label description#>
+ (CGSize)labelWithContent:(NSString *)content
                 fontValue:(CGFloat)fontValue
                     label:(UILabel *)label;

/// 给当前label添加下划线
/// @param label <#label description#>
/// @param color 自定义颜色
/// @param content <#content description#>
/// @param range 下划线长度
+ (void)underLineWithLabel:(UILabel *)label
                     color:(UIColor *)color
                   content:(NSString *)content
                     range:(NSRange)range;

/// 当前label特定内容字体显示不同的颜色
/// @param label <#label description#>
/// @param content 要显示不同颜色的文本
/// @param color 特定内容要显示的颜色
+ (void)changeColorWithLabel:(UILabel *)label
                     content:(NSString *)content
                       color:(UIColor *)color;

/// label 特定内容显示不同的颜色
/// @param label <#label description#>
/// @param content <#content description#>
/// @param fontValue <#fontValue description#>
/// @param weight iOS 8.2 版本前无效
/// @param color 特定内容要显示的颜色
+ (void)changeColorWithLabel:(UILabel *)label
                     content:(NSString *)content
                   fontValue:(CGFloat)fontValue
                      weight:(CGFloat)weight
                       color:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
