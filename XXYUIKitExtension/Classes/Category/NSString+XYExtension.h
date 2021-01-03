//
//  NSString+XYExtension.h
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import <Foundation/Foundation.h>
// 加密类型
typedef NS_ENUM(NSInteger, AESType) {
    AESType128 = 0,
    AESType256 = 1
};

NS_ASSUME_NONNULL_BEGIN

@interface NSString (XYExtension)

/// 对字符串 AES 加密
/// @param content 加密内容
/// @param key 加密 key
/// @type 加密类型
+ (NSString *)encrypyAES:(NSString *)content key:(NSString *)key type:(AESType)type;

/// 对字符串 AES 解密
/// @param content 解密内容
/// @param key 解密key
/// @type 加密类型
+ (NSString *)descryptAES:(NSString *)content key:(NSString *)key type:(AESType)type;

@end

NS_ASSUME_NONNULL_END
