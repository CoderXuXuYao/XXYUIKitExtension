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

- (CGSize)labelWithContent:(NSString *)content fontValue:(CGFloat)fontValue{
    self.font = [UIFont systemFontOfSize:fontValue];
    self.text = content.length > 0 ? content : @" ";
    self.numberOfLines = 0;
    self.lineBreakMode = NSLineBreakByTruncatingTail;
    CGSize maxLalSize = CGSizeMake(MAXFLOAT, MAXFLOAT);
    CGSize labSize = [self sizeThatFits:maxLalSize];
    return labSize;
}

- (void)underLineWithColor:(UIColor *)color content:(NSString *)content range:(NSRange)range{
    if (!color || !content || 0 ==content.length) return;
    if (NSNotFound == range.location) {
        range = NSMakeRange(0, 0);
    }
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:content];
    [attributeString addAttributes:@{NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle), NSUnderlineColorAttributeName:color} range:range];
    self.attributedText = attributeString;
}

- (void)changeColorWithContent:(NSString *)content color:(UIColor *)color{
    NSString *labContent = self.text;
    if ((!content || content.length <= 0) || (!labContent || labContent.length <= 0)) return;
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:labContent];
    if (![labContent containsString:content]) return;
    NSRange range = [labContent rangeOfString:content];
    [attributeString addAttribute:NSForegroundColorAttributeName value:color range:range];
    self.attributedText = attributeString;
}

- (void)changeColorWithContent:(NSString *)content fontValue:(CGFloat)fontValue weight:(CGFloat)weight color:(UIColor *)color{
    NSString *labContent = self.text;
    if ((!content || content.length <= 0) || (!labContent || labContent.length <= 0)) return;
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:labContent];
    if (![labContent containsString:content]) return;
    NSRange range = [labContent rangeOfString:content];
    // 显示特定的内容
    if (@available(iOS 8.2, *)) {
        [attributeString addAttributes:@{NSForegroundColorAttributeName:color, NSFontAttributeName:[UIFont systemFontOfSize:fontValue weight:weight]} range:range];
    }else{
        [attributeString addAttributes:@{NSForegroundColorAttributeName:color, NSFontAttributeName:[UIFont systemFontOfSize:fontValue]} range:range];
    }
    self.attributedText = attributeString;
}

- (void)changeLineSpaceForWithSpace:(CGFloat)space{
    NSString *labelText = self.text;
    if (!labelText || 0 == labelText.length) return;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    self.attributedText = attributedString;
    [self sizeToFit];
}

- (void)changeWordSpaceWithSpace:(CGFloat)space{
    NSString *labelText = self.text;
    if (!labelText || 0 == labelText.length) return;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(space)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    self.attributedText = attributedString;
    [self sizeToFit];
}

- (void)changeSpaceWithLineSpace:(CGFloat)lineSpace wordSpace:(CGFloat)wordSpace{
    NSString *labelText = self.text;
    if (!labelText || 0 == labelText.length) return;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(wordSpace)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    self.attributedText = attributedString;
    [self sizeToFit];
}

@end
