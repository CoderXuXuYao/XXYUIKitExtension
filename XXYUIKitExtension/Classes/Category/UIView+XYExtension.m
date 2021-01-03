//
//  UIView+XYExtension.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import "UIView+XYExtension.h"
#import <objc/runtime.h>

const char XYActionHanlderTapGestureKey;
const char XYActionHanlderTapBlockKey;

@implementation UIView (XYExtension)

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
