//
//  UIView+XYExtension.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import "UIView+XYExtension.h"
#import <objc/runtime.h>

const char XYActionHanlderTapGestureKey;            // 添加点击事件key
const char XYActionHanlderTapBlockKey;              // 添加点击事件block key

@implementation UIView (XYExtension)

@dynamic xy_x;
@dynamic xy_y;
@dynamic xy_width;
@dynamic xy_height;
@dynamic xy_centerX;
@dynamic xy_centerY;
@dynamic xy_size;
@dynamic xy_origin;

- (void)setXy_x:(CGFloat)xy_x{
    CGRect frame = self.frame;
    frame.origin.x = xy_x;
    self.frame = frame;
}

- (CGFloat)xy_x{
    return self.frame.origin.x;
}

- (void)setXy_y:(CGFloat)xy_y{
    CGRect frame = self.frame;
    frame.origin.y = xy_y;
    self.frame = frame;
}

- (CGFloat)xy_y{
    return self.frame.origin.y;
}

- (void)setXy_width:(CGFloat)xy_width{
    CGRect frame = self.frame;
    frame.size.width = xy_width;
    self.frame = frame;
}

- (CGFloat)xy_width{
    return self.frame.size.width;
}

- (void)setXy_height:(CGFloat)xy_height{
    CGRect frame = self.frame;
    frame.size.height = xy_height;
    self.frame = frame;
}

- (void)setXy_centerX:(CGFloat)xy_centerX{
    CGPoint center = self.center;
    center.x = xy_centerX;
    self.center = center;
}

- (CGFloat)xy_centerX{
    return self.center.x;
}

- (void)setXy_centerY:(CGFloat)xy_centerY{
    CGPoint center = self.center;
    center.y = xy_centerY;
    self.center = center;
}

- (CGFloat)xy_centerY{
    return self.center.y;
}

- (void)setXy_size:(CGSize)xy_size{
    CGRect frame = self.frame;
    frame.size = xy_size;
    self.frame = frame;
}

- (CGSize)xy_size{
    return self.frame.size;
}

- (void)setXy_origin:(CGPoint)xy_origin{
    CGRect frame = self.frame;
    frame.origin = xy_origin;
    self.frame = frame;
}

- (CGPoint)xy_origin{
    return self.frame.origin;
}

- (void)handleTapActionWithBlock:(void (^)(void))block{
    // 运行时获取单击对象
    UITapGestureRecognizer *tap = objc_getAssociatedObject(self, &XYActionHanlderTapGestureKey);
    if (!tap) {
        // 如果没有改对象，就创建一个
        tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionWithTapGesture:)];
        [self addGestureRecognizer:tap];
        // 绑定一下tapgesture
        objc_setAssociatedObject(self, &XYActionHanlderTapGestureKey, tap, OBJC_ASSOCIATION_RETAIN);
    }
    // 绑定一下block
    objc_setAssociatedObject(self, &XYActionHanlderTapBlockKey, block, OBJC_ASSOCIATION_COPY);
}

- (void)handleActionWithTapGesture:(UITapGestureRecognizer *)tap{
    if (UIGestureRecognizerStateRecognized == tap.state) {
        // 取出绑定的block
        void(^action)(void) = objc_getAssociatedObject(self, &XYActionHanlderTapBlockKey);
        if (action) {
            action();
        }
    }
}

@end
