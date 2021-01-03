//
//  UIView+XYExtension.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (XYExtension)

/**
 *  1.间隔X值
 */
@property (nonatomic, assign) CGFloat xy_x;

/**
 *  2.间隔Y值
 */
@property (nonatomic, assign) CGFloat xy_y;

/**
 *  3.宽度
 */
@property (nonatomic, assign) CGFloat xy_width;

/**
 *  4.高度
 */
@property (nonatomic, assign) CGFloat xy_height;

/**
 *  5.中心点X值
 */
@property (nonatomic, assign) CGFloat xy_centerX;

/**
 *  6.中心点Y值
 */
@property (nonatomic, assign) CGFloat xy_centerY;

/**
 *  7.尺寸大小
 */
@property (nonatomic, assign) CGSize xy_size;

/**
 *  8.起始点
 */
@property (nonatomic, assign) CGPoint xy_origin;


/// 给当前view添加点击事件
/// @param block <#block description#>
- (void)handleTapActionWithBlock:(void(^)(void))block;

@end

NS_ASSUME_NONNULL_END
