//
//  SVProgressHUD+XYExtension.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/10.
//

#define BLACKCOLOR          [UIColor blackColor]
#define WHITECOLOR          [UIColor whiteColor]

#import "SVProgressHUD+XYExtension.h"

@implementation SVProgressHUD (XYExtension)

+ (void)showWithStatus:(NSString *)status defaultStyle:(SVProgressHUDStyle)style{
    [SVProgressHUD setDefaultStyle:style];
    if (style == SVProgressHUDStyleCustom) {
        [SVProgressHUD setBackgroundColor:BLACKCOLOR];
        [SVProgressHUD setForegroundColor:WHITECOLOR];
    }
    [SVProgressHUD showWithStatus:status];
}

+ (void)showInfoWithStatus:(NSString *)status defaultStyle:(SVProgressHUDStyle)style{
    [SVProgressHUD setDefaultStyle:style];
    if (style == SVProgressHUDStyleCustom) {
        [SVProgressHUD setBackgroundColor:BLACKCOLOR];
        [SVProgressHUD setForegroundColor:WHITECOLOR];
    }
    [SVProgressHUD showInfoWithStatus:status];
}

+ (void)showProgress:(float)progress defaultStyle:(SVProgressHUDStyle)style{
    [SVProgressHUD setDefaultStyle:style];
    if (style == SVProgressHUDStyleCustom) {
        [SVProgressHUD setBackgroundColor:BLACKCOLOR];
        [SVProgressHUD setForegroundColor:WHITECOLOR];
    }
    [SVProgressHUD showProgress:progress];
}

+ (void)showErrorWithStatus:(NSString *)status dismissWithDelay:(CGFloat)delay{
    [SVProgressHUD showErrorWithStatus:status];
    [SVProgressHUD dismissWithDelay:delay];
}

+ (void)showSuccessWithStatus:(NSString *)status dismissWithDelay:(CGFloat)delay{
    [SVProgressHUD showSuccessWithStatus:status];
    [SVProgressHUD dismissWithDelay:delay];
}

+ (void)showInfoWithStatus:(NSString *)status
              defaultStyle:(SVProgressHUDStyle)style
           dismisWithDelay:(CGFloat)delay{
    [SVProgressHUD setDefaultStyle:style];
    if (style == SVProgressHUDStyleCustom) {
        [SVProgressHUD setBackgroundColor:BLACKCOLOR];
        [SVProgressHUD setForegroundColor:WHITECOLOR];
    }
    [SVProgressHUD showInfoWithStatus:status];
    [SVProgressHUD dismissWithDelay:delay];
}

+ (void)showErrorWithStatus:(NSString *)status
               defaultStyle:(SVProgressHUDStyle)style
           dismissWithDelay:(CGFloat)delay{
    [SVProgressHUD setDefaultStyle:style];
    if (style == SVProgressHUDStyleCustom) {
        [SVProgressHUD setBackgroundColor:BLACKCOLOR];
        [SVProgressHUD setForegroundColor:WHITECOLOR];
    }
    [SVProgressHUD showErrorWithStatus:status];
    [SVProgressHUD dismissWithDelay:delay];
}

+ (void)showSuccessWithStatus:(NSString *)status
                 defaultStyle:(SVProgressHUDStyle)style
             dismissWithDelay:(CGFloat)delay{
    [SVProgressHUD setDefaultStyle:style];
    if (style == SVProgressHUDStyleCustom) {
        [SVProgressHUD setBackgroundColor:BLACKCOLOR];
        [SVProgressHUD setForegroundColor:WHITECOLOR];
    }
    [SVProgressHUD showSuccessWithStatus:status];
    [SVProgressHUD dismissWithDelay:delay];
}


@end
