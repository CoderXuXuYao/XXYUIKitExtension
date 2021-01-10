//
//  UILabel+XYExtension.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (XYExtension)

/**
 创建根据文本内容自适应的label
 @param content <#content description#>
 @param fontValue <#fontValue description#>
 */
+ (UILabel *)initWithContent:(NSString *)content fontValue:(CGFloat)fontValue;

/**
 根据文本内容获取当前label的size
 @param content <#content description#>
 @param fontValue <#fontValue description#>
 */
- (CGSize)labelWithContent:(NSString *)content fontValue:(CGFloat)fontValue;

/**
 给当前label添加下划线
 @param color 自定义颜色
 @param content <#content description#>
 @param range 下划线长度
 */
- (void)underLineWithColor:(UIColor *)color content:(NSString *)content range:(NSRange)range;

/**
 当前label特定内容字体显示不同的颜色
 @param content 要显示不同颜色的文本
 @param color 特定内容要显示的颜色
 */
- (void)changeColorWithContent:(NSString *)content color:(UIColor *)color;

/**
 label 特定内容显示不同的颜色
 @param content <#content description#>
 @param fontValue <#fontValue description#>
 @param weight iOS 8.2 版本前无效
 @param color 特定内容要显示的颜色
 */
- (void)changeColorWithContent:(NSString *)content fontValue:(CGFloat)fontValue weight:(CGFloat)weight color:(UIColor *)color;

/**
 改变行间距
 @param space <#space description#>
 */
- (void)changeLineSpaceForWithSpace:(CGFloat)space;

/**
 改变字间距
 @param space <#space description#>
 */
- (void)changeWordSpaceWithSpace:(CGFloat)space;

/**
 改变行间距和字间距
 @param lineSpace <#lineSpace description#>
 @param wordSpace <#wordSpace description#>
 */
- (void)changeSpaceWithLineSpace:(CGFloat)lineSpace wordSpace:(CGFloat)wordSpace;


@end

NS_ASSUME_NONNULL_END
