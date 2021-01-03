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

+ (int)dayWithYear:(int)year month:(int)month day:(int)day{
    int i,sum;
    int days[]={0,31,28,31,30,31,30,31,31,30,31,30,31};
    for(i=1;i<13;i++){
        days[i]+=days[i-1];
    }
    sum=days[month-1]+day;
    if([self isRunYearWithYear:year]){
        sum+=1;
    }
    return sum;
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
#pragma mark - pravite action
+ (UIViewController *)topViewController:(UIViewController *)vc{
    if ([vc isKindOfClass:[UINavigationController class]]){
        return [XYUIKitUtil topViewController:[(UINavigationController *)vc topViewController]];
    } else if ([vc isKindOfClass:[UITabBarController class]]){
        return [XYUIKitUtil topViewController:[(UITabBarController *)vc selectedViewController]];
    } else {
        return vc;
    }
    return nil;
}


@end
