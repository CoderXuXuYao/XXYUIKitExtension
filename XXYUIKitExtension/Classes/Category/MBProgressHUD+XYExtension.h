//
//  MBProgressHUD+XYExtension.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/10.
//

#import <MBProgressHUD/MBProgressHUD.h>

NS_ASSUME_NONNULL_BEGIN

@interface MBProgressHUD (XYExtension)
/**
 show tip in window -- 将toast显示在window上
 @param message message
 */
+ (void)showTipInWindowWithMessage:(NSString *)message;
/**
 show tip in current view  toast显示在当前view上
 @param message show message
 */
+ (void)showTipInViewWithMessage:(NSString *)message;

/**
 show tip in window and custome dismiss time -- 将toast显示在window上,自定义消失时间
 @param message <#message description#>
 @param delay <#delay description#>
 */
+ (void)showTipInWindowWithMessage:(NSString *)message delay:(double)delay;

/**
 show tip in current view and custome dismiss time by yourself ---  toast显示在当前view上，自定义消失时间s
 @param message <#message description#>
 @param delay <#delay description#>
 */
+ (void)showTipInViewWithMessage:(NSString *)message delay:(double)delay;

@end

NS_ASSUME_NONNULL_END
