//
//  XYUIKitUtil.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2021/1/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYUIKitUtil : NSObject

/// 判断是否为闰年
/// @param year <#year description#>
+ (BOOL)isRunYearWithYear:(int)year;
/** 计算当天是一年中的第几天 **/
+ (int)dayWithYear:(int)year month:(int)month day:(int)day;
/** 获取当前vc */
+ (UIViewController *)currentViewController;

@end

NS_ASSUME_NONNULL_END
