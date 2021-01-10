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
/**
 加载过程 progress
 @param message message
 */
+ (void)showActivityMessageInWindow:(NSString*)message;
+ (void)showActivityMessageInView:(NSString*)message;
/**
 加载过程 progress
 @param message message
 @param delay delay
 */
+ (void)showActivityMessageInWindow:(NSString*)message delay:(double)delay;
+ (void)showActivityMessageInView:(NSString*)message delay:(double)delay;

#pragma mark-------------------- show Image----------------------------

/**
 success

 @param message <#message description#>
 */
+ (void)showSuccessMessage:(NSString *)message;

/**
 error

 @param message <#message description#>
 */
+ (void)showErrorMessage:(NSString *)message;

/**
 infoMessage

 @param message <#message description#>
 */
+ (void)showInfoMessage:(NSString *)message;

/**
 warning

 @param message <#message description#>
 */
+ (void)showWarnMessage:(NSString *)message;


@end

NS_ASSUME_NONNULL_END
