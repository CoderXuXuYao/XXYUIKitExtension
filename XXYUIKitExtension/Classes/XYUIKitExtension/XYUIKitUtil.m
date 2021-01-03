//
//  XYUIKitUtil.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/3.
//

#import "XYUIKitUtil.h"

@implementation XYUIKitUtil

/** 判断是否为闰年 **/
+ (BOOL)isRunYearWithYear:(int)year{
    if(year%400==0){
        return YES;
    }
    if(year%100==0){
        return NO;
    }
    if(year%4==0){
        return YES;
    }
    return NO;
}

+ (int)whichDayWithYear:(int)y month:(int)m day:(int)d{
    int i,sum;
    int days[]={0,31,28,31,30,31,30,31,31,30,31,30,31};
    for(i=1;i<13;i++){
        days[i]+=days[i-1];
    }
    sum=days[m-1]+d;
    if([self isRunYearWithYear:y]){
        sum+=1;
    }
    return sum;
}

//window
+ (UIWindow *)currentWindow {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    return appDelegate.window;
}
//appdelegate
+ (AppDelegate *)currentAppDelegate{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}
//获取当前控制器
+ (UIViewController *)currentViewController {
    UIViewController *resultVC;
    resultVC = [XYUIKitUtil topViewController:[[UIApplication sharedApplication].keyWindow rootViewController]];
    while (resultVC.presentedViewController) {
        resultVC = [XYUIKitUtil topViewController:resultVC.presentedViewController];
    }
    return resultVC;
}

+ (UIViewController *)topViewController:(UIViewController *)vc
{
    if ([vc isKindOfClass:[UINavigationController class]])
    {
        return [XXYTools topViewController:[(UINavigationController *)vc topViewController]];
    } else if ([vc isKindOfClass:[UITabBarController class]])
    {
        return [XXYTools topViewController:[(UITabBarController *)vc selectedViewController]];
    } else {
        return vc;
    }
    return nil;
}


@end
