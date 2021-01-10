//
//  MBProgressHUD+XYExtension.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/10.
//

#import "MBProgressHUD+XYExtension.h"

@implementation MBProgressHUD (XYExtension)

#pragma mark - position center
+ (void)showTipInWindowWithMessage:(NSString *)message{
    
}

+ (void)showTipInWindowWithMessage:(NSString *)message delay:(double)delay{
    
}

+ (void)showTipInViewWithMessage:(NSString *)message{
    
}

+ (void)showTipInViewWithMessage:(NSString *)message delay:(double)delay{
    
}

#pragma mark - position center with image

#pragma mark - position top

#pragma mark - pravite method

+ (MBProgressHUD *)initWithMessage:(NSString *)message inWindow:(BOOL)inWindow mode:(MBProgressHUDMode)mode hudAnimation:(MBProgressHUDAnimation)hudAnimation{
    // 获取显示的view
    UIView *view = inWindow ? [UIApplication sharedApplication].delegate.window : [MBProgressHUD currentViewController].view;
    MBProgressHUD *hud = [MBProgressHUD HUDForView:view];
    if (!hud) {
        hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    }else{
        [hud showAnimated:YES];
    }
    hud.mode = (MBProgressHUDModeCustomView == mode) ? MBProgressHUDModeIndeterminate : mode;
    hud.animationType = hudAnimation;
    hud.minSize = CGSizeMake(80, 80);
    
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



