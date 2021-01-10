//
//  UIColor+XYHexString.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/9.
//

#import "UIColor+XYHexString.h"
// xyRGBHex 透明度默认为 1.0
#define xyRGBHex(rgbValue) [UIColor colorWithRed:((uint32_t)((rgbValue & 0xFF0000) >> 16))/255.0 green:((uint32_t)((rgbValue & 0xFF00) >> 8))/255.0 blue:((uint32_t)(rgbValue & 0xFF))/255.0 alpha:1.0]
// xyRGBHex 自定义透明度
#define xyRGBHexAlpha(rgbValue, a) [UIColor colorWithRed:((uint32_t)((rgbValue & 0xFF0000) >> 16))/255.0 green:((uint32_t)((rgbValue & 0xFF00) >> 8))/255.0 blue:((uint32_t)(rgbValue & 0xFF))/255.0 alpha:(a)]

NSUInteger const STRINGLENGHT = 6;  // 字符串长度限制

@implementation UIColor (XYHexString)

+ (UIColor *)colorWithHexvalue:(uint32_t)hexValue{
    return [UIColor colorWithHexvalue:hexValue alpha:1.0];
}

+ (UIColor *)colorWithHexvalue:(uint32_t)hexValue alpha:(CGFloat)alpha{
    CGFloat red = ((uint32_t)((hexValue & 0xFF0000) >> 16)) / 255.0;
    CGFloat green = ((uint32_t)((hexValue & 0xFF00) >> 8)) / 255.0;
    CGFloat blue = ((uint32_t)(hexValue & 0xFF)) / 255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)hexString{
    return [UIColor colorWithHexString:hexString alpha:1.0];
}

+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha{
    NSString *cString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor clearColor];
    // 判断前缀并剪切掉
    if ([cString hasPrefix:@"0X"]){
        cString = [cString substringFromIndex:2];
    }else if ([cString hasPrefix:@"#"]){
        cString = [cString substringFromIndex:1];
    }else if (STRINGLENGHT == cString.length){
        cString = [cString substringFromIndex:0];
    }else if (STRINGLENGHT != cString.length){
        return [UIColor clearColor];
    }
    // 从六位数值中找到RGB对应的位数并转换
    NSRange range;
    range.location = 0;
    range.length = 2;
    //R、G、B
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((CGFloat) r / 255.0f) green:((CGFloat) g / 255.0f) blue:((CGFloat) b / 255.0f) alpha:alpha];
}

#pragma mark - 固定颜色

+ (UIColor *)xyBlackColor_333333{
    return [UIColor colorWithHexString:@"#333333"];
}

+ (UIColor *)xyDarkGrayColor_696969{
    return [UIColor colorWithHexString:@"#696969"];
}

+ (UIColor *)xyLightGrayColor_dfdfdf{
    return [UIColor colorWithHexString:@"#dfdfdf"];
}

+ (UIColor *)xyLightGrayColor_bebec3{
    return [UIColor colorWithHexString:@"#bebec3"];
}

+ (UIColor *)xyWhiteGrayColor_f7f7f7{
    return [UIColor colorWithHexString:@"#f7f7f7"];
}

+ (UIColor *)xyRedColor_eb414a{
    return [UIColor colorWithHexString:@"#eb414a"];
}

+ (UIColor *)xyBlueColor_2773cd{
    return [UIColor colorWithHexString:@"#2773cd"];
}

+ (UIColor *)xyBlueColor_006dee{
    return [UIColor colorWithHexString:@"#006dee"];
}

@end
