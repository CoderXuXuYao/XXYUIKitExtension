//
//  MBProgressHUD+XYExtension.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/10.
//

#import "MBProgressHUD+XYExtension.h"

const double hideTime = 2.f;

@implementation MBProgressHUD (XYExtension)

#pragma mark - position center
+ (void)showTipInWindowWithMessage:(NSString *)message{
    [MBProgressHUD showTipMessage:message isWindow:YES timer:hideTime];
}

+ (void)showTipInWindowWithMessage:(NSString *)message delay:(double)delay{
    [MBProgressHUD showTipMessage:message isWindow:YES timer:delay];
}

+ (void)showTipInViewWithMessage:(NSString *)message{
    [MBProgressHUD showTipMessage:message isWindow:NO timer:hideTime];
}

+ (void)showTipInViewWithMessage:(NSString *)message delay:(double)delay{
    [MBProgressHUD showTipMessage:message isWindow:NO timer:delay];
}

#pragma mark-------------------- show Activity ----------------------------

+ (void)showActivityMessageInWindow:(NSString*)message{
    [MBProgressHUD showActivityMessage:message isWindow:YES timer:0];
}

+ (void)showActivityMessageInView:(NSString*)message{
    [MBProgressHUD showActivityMessage:message isWindow:NO timer:0];
}

+ (void)showActivityMessageInWindow:(NSString*)message
                              timer:(double)aTimer{
    [MBProgressHUD showActivityMessage:message isWindow:YES timer:aTimer];
}

+ (void)showActivityMessageInView:(NSString*)message
                            timer:(double)aTimer{
    [MBProgressHUD showActivityMessage:message isWindow:NO timer:aTimer];
}


#pragma mark - position center with image
#pragma mark-------------------- show Image----------------------------

+ (void)showSuccessMessage:(NSString *)message{
    [MBProgressHUD showCustomIconInWindow:@"MBHUD_Success" message:message];
}

+ (void)showErrorMessage:(NSString *)message{
    [MBProgressHUD showCustomIconInWindow:@"MBHUD_Error" message:message];
}

+ (void)showInfoMessage:(NSString *)message{
    [MBProgressHUD showCustomIconInWindow:@"MBHUD_Info" message:message];
}

+ (void)showWarnMessage:(NSString *)message{
    [MBProgressHUD showCustomIconInWindow:@"MBHUD_Warn" message:message];
}

+ (void)showCustomIconInWindow:(NSString *)iconName message:(NSString *)message{
    [MBProgressHUD showCustomIcon:iconName message:message isWindow:true];
}

+ (void)showCustomIconInView:(NSString *)iconName message:(NSString *)message{
    [MBProgressHUD showCustomIcon:iconName message:message isWindow:false];
}

+(void)showCustomIcon:(NSString *)iconName message:(NSString *)message isWindow:(BOOL)isWindow{
    MBProgressHUD *hud  =  [MBProgressHUD initWithMessage:message inWindow:isWindow mode:MBProgressHUDModeCustomView hudAnimation:MBProgressHUDAnimationFade];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:iconName]];
    [hud hideAnimated:YES afterDelay:hideTime];
}

+ (void)hideHUD{
    UIView *winView = [UIApplication sharedApplication].delegate.window;
    //[self hideAllHUDsForView:winView animated:YES];
    [self hideHUDForView:winView animated:YES];
    //[self hideAllHUDsForView:[XXYCommonUtil currentViewController].view animated:YES];
    [self hideHUDForView:[MBProgressHUD currentViewController].view animated:YES];
}


#pragma mark - position top

#pragma mark - pravite method

+ (void)showTipMessage:(NSString*)message isWindow:(BOOL)isWindow timer:(double)aTimer{
    MBProgressHUD *hud = [MBProgressHUD initWithMessage:message inWindow:isWindow mode:MBProgressHUDModeIndeterminate hudAnimation:MBProgressHUDAnimationFade];
    hud.mode = MBProgressHUDModeText;
    [hud hideAnimated:YES afterDelay:aTimer];
}

+ (void)showActivityMessage:(NSString*)message
                   isWindow:(BOOL)isWindow
                      timer:(int)aTimer{
    MBProgressHUD *hud  =  [MBProgressHUD initWithMessage:message inWindow:isWindow mode:MBProgressHUDModeIndeterminate hudAnimation:MBProgressHUDAnimationFade];
    if (aTimer > 0) {
        [hud hideAnimated:YES afterDelay:aTimer];
    }
}

+ (MBProgressHUD *)initWithMessage:(NSString *)message inWindow:(BOOL)inWindow mode:(MBProgressHUDMode)mode hudAnimation:(MBProgressHUDAnimation)hudAnimation{
    // 获取显示的view
    UIView *view = inWindow ? [UIApplication sharedApplication].delegate.window : [MBProgressHUD currentViewController].view;
    MBProgressHUD *hud = [MBProgressHUD HUDForView:view];
    if (!hud) {
        hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    }else{
        [hud showAnimated:YES];
    }
    hud.mode = mode;
    hud.animationType = hudAnimation;
    hud.minSize = CGSizeMake(80, 80);
    hud.label.text = message.length > 0 ? message : @"加载中...";
    hud.label.numberOfLines = 0;
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.color = [UIColor colorWithWhite:0 alpha:0.9];
    hud.removeFromSuperViewOnHide = YES;
    [hud setContentColor:[UIColor whiteColor]];
    
    return hud;
}

//获取当前vc
+ (UIViewController *)currentViewController {
    UIViewController *result = nil;
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal) {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows) {
            if (tmpWin.windowLevel == UIWindowLevelNormal) {
                window = tmpWin;
                break;
            }
        }
    }
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]]) {
        result = nextResponder;
    } else {
        result = window.rootViewController;
    }
    return result;
}

@end



