//
//  UIColor+XYHexString.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (XYHexString)

/// 从十六进制字符获取颜色 -- Gets a color from a hexadecimal character
/// @param hexValue 十六进制数字
+ (UIColor *)colorWithHexvalue:(uint32_t)hexValue;

/// 从十六进制字符获取颜色,可设置透明度 -- Gets a color from a hexadecimal character and you can custom alpha by yourself.
/// @param hexValue <#hexValue description#>
/// @param alpha <#alpha description#>
+ (UIColor *)colorWithHexvalue:(uint32_t)hexValue alpha:(CGFloat)alpha;

/// 从十六进制字符串获取颜色 -- Gets the color from a hexadecimal string
/// @param hexString <#hexString description#>
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/// 从十六进制字符串获取颜色,可设置透明度 -- Gets the color from a hexadecimal string and you can custom alpha by yourself.
/// @param hexString <#hexString description#>
/// @param alpha <#alpha description#>
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

#pragma mark - 自定义通常使用颜色

/// 黑色 -- 正文、标题、昵称、文案通常用的颜色 ---  Black - Usual color for text, headings, nicknames, and writing.
+ (UIColor *)xyBlackColor_333333;

/// 暗灰色 -- dark gray
+ (UIColor *)xyDarkGrayColor_696969;

/// 淡灰色 -- light gray
+ (UIColor *)xyLightGrayColor_dfdfdf;

/// 灰色、浅灰色 一般用于输入框默认状态颜色 -- Gray or light gray are generally used for the default state color of the input box.
+ (UIColor *)xyLightGrayColor_bebec3;

/// 灰白色 --  gray
+ (UIColor *)xyWhiteGrayColor_f7f7f7;

/// 红色 -- red
+ (UIColor *)xyRedColor_eb414a;

/// 蓝色 字体色 -- blue
+ (UIColor *)xyBlueColor_2773cd;

/// 深蓝色 -- dark blue
+ (UIColor *)xyBlueColor_006dee;

@end

NS_ASSUME_NONNULL_END
