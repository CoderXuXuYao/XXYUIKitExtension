//
//  UILabel+XYExtension.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import "UILabel+XYExtension.h"

@implementation UILabel (XYExtension)

+ (UILabel *)initWithContent:(NSString *)content fontValue:(CGFloat)fontValue{
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:fontValue];
    label.text = content.length > 0 ? content : @" ";
    label.backgroundColor = [UIColor whiteColor];
    label.numberOfLines = 1;
    label.lineBreakMode = NSLineBreakByTruncatingTail;
    CGSize maxSize = CGSizeMake(MAXFLOAT, MAXFLOAT);    // 最大值
    // 关键语句
    CGSize labSize = [label sizeThatFits:maxSize];
    // 将frame赋值给label, 如果用xib加了约束可以只改一个约束的值
    label.frame = CGRectMake(0, 0, labSize.width, labSize.height);
    return label;
}

+ (CGSize)labelWithContent:(NSString *)content fontValue:(CGFloat)fontValue label:(UILabel *)label{
    label.font = [UIFont systemFontOfSize:fontValue];
    label.text = content.length > 0 ? content : @" ";
    label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByTruncatingTail;
    CGSize maxLalSize = CGSizeMake(MAXFLOAT, MAXFLOAT);
    CGSize labSize = [label sizeThatFits:maxLalSize];
    return labSize;
}

+ (void)underLineWithLabel:(UILabel *)label color:(UIColor *)color content:(NSString *)content range:(NSRange)range{
    if (!label || !color || !content || 0 ==content.length) return;
    if (NSNotFound == range.location) {
        range = NSMakeRange(0, 0);
    }
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:content];
    [attributeString addAttributes:@{NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle), NSUnderlineColorAttributeName:color} range:range];
    label.attributedText = attributeString;
}

+ (void)changeColorWithLabel:(UILabel *)label content:(NSString *)content color:(UIColor *)color{
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:content];
    NSString *labContent = label.text;
    if ((!content || content.length <= 0) || (!labContent || labContent.length <= 0)) return;
    NSRange range = NSMakeRange(0, 0);
    if (labContent.length > 0) {
        range = [labContent rangeOfString:content];
    }else{
        range = NSMakeRange(0, content.length - 1);
    }
    [attributeString addAttribute:NSForegroundColorAttributeName value:color range:range];
    label.attributedText = attributeString;
}

+ (void)changeColorWithLabel:(UILabel *)label content:(NSString *)content fontValue:(CGFloat)fontValue weight:(CGFloat)weight color:(UIColor *)color{
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:content];
    NSString *labContent = label.text;
    if ((!content || content.length <= 0) || (!labContent || labContent.length <= 0)) return;
    NSRange range = NSMakeRange(0, 0);
    // 显示特定的内容
    if (labContent.length > 0) {
        if ([labContent containsString:content]) {
             range = [labContent rangeOfString:content];
        }
    }else{
        range = NSMakeRange(0, content.length - 1);
    }
    if (@available(iOS 8.2, *)) {
        [attributeString addAttributes:@{NSForegroundColorAttributeName:color, NSFontAttributeName:[UIFont systemFontOfSize:fontValue weight:weight]} range:range];
    }else{
        [attributeString addAttributes:@{NSForegroundColorAttributeName:color, NSFontAttributeName:[UIFont systemFontOfSize:fontValue]} range:range];
    }
    label.attributedText = attributeString;
}

@end
