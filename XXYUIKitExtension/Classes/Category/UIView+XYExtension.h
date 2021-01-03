//
//  UIView+XYExtension.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (XYExtension)

/// 给当前view添加点击事件
/// @param block <#block description#>
- (void)handleTapActionWithBlock:(void(^)(void))block;

@end

NS_ASSUME_NONNULL_END
