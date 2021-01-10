//
//  SVProgressHUD+XYExtension.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/10.
//

#import <SVProgressHUD/SVProgressHUD.h>

NS_ASSUME_NONNULL_BEGIN

@interface SVProgressHUD (XYExtension)

/**
 SVProgressHUDStyleLight, 高亮
 SVProgressHUDStyleDark,  黑色
 SVProgressHUDStyleCustom 自定义

 @param status <#status description#>
 @param style <#style description#>
 */
+ (void)showWithStatus:(NSString *)status defaultStyle:(SVProgressHUDStyle)style;

/**
 显示详细信息

 @param status <#status description#>
 @param style <#style description#>
 */
+ (void)showInfoWithStatus:(NSString *)status defaultStyle:(SVProgressHUDStyle)style;

/**
 显示进度

 @param progress <#progress description#>
 @param style <#style description#>
 */
+ (void)showProgress:(float)progress defaultStyle:(SVProgressHUDStyle)style;

/**
 失败

 @param status <#status description#>
 @param delay <#delay description#>
 */
+ (void)showErrorWithStatus:(NSString *)status dismissWithDelay:(CGFloat)delay;

/**
 成功

 @param status <#status description#>
 @param delay <#delay description#>
 */
+ (void)showSuccessWithStatus:(NSString *)status dismissWithDelay:(CGFloat)delay;

/**
 显示详细状态 自动消失

 @param status <#status description#>
 @param style <#style description#>
 @param delay <#delay description#>
 */
+ (void)showInfoWithStatus:(NSString *)status defaultStyle:(SVProgressHUDStyle)style dismisWithDelay:(CGFloat)delay;

/**
 显示错误hud 自动消失

 @param status <#status description#>
 @param style <#style description#>
 @param delay <#delay description#>
 */
+ (void)showErrorWithStatus:(NSString *)status defaultStyle:(SVProgressHUDStyle)style dismissWithDelay:(CGFloat)delay;

/**
 显示成功hud 自动消失

 @param status <#status description#>
 @param style <#style description#>
 @param delay <#delay description#>
 */
+ (void)showSuccessWithStatus:(NSString *)status defaultStyle:(SVProgressHUDStyle)style dismissWithDelay:(CGFloat)delay;

@end

NS_ASSUME_NONNULL_END
