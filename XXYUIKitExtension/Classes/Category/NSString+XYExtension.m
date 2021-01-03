//
//  NSString+XYExtension.m
//  XXYUIKitExtension
//
//  Created by 许须耀 on 2020/12/27.
//

#import "NSString+XYExtension.h"
#import <CommonCrypto/CommonCrypto.h>

// 初始向量
NSString *const kInitVector = @"0123456789";
// 密钥长度
size_t const kKeySize128 = kCCKeySizeAES128;
size_t const kKeySize256 = kCCKeySizeAES256;

@implementation NSString (XYExtension)

+ (NSString *)encrypyAES:(NSString *)content key:(NSString *)key type:(AESType)type{
    if (content.length <= 0 || !content || !key || key.length <= 0) return nil;
    size_t keySize = 0;
    if (AESType128 == type) {
        keySize = kKeySize128;
    }else if (AESType256 == type){
        keySize = kKeySize256;
    }
    NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSUInteger dataLength = contentData.length;
    
    // 为结束符'\\0' +1
    char keyPtr[keySize + 1];
    memset(keyPtr, 0, sizeof(keyPtr));
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    size_t encryptSize = dataLength + kCCBlockSizeAES128;
    void *encryptedBytes = malloc(encryptSize);
    size_t actualOutSize = 0;
    
    NSData *initVector = [kInitVector dataUsingEncoding:NSUTF8StringEncoding];
    
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode, // 加密模式
                                          keyPtr,
                                          keySize,
                                          initVector.bytes,
                                          contentData.bytes,
                                          dataLength,
                                          encryptedBytes,
                                          encryptSize,
                                          &actualOutSize);
    
    if (kCCSuccess == cryptStatus) {
        // 对加密后的数据进行 base64 编码
        return [[NSData dataWithBytesNoCopy:encryptedBytes length:actualOutSize] base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    }
    free(encryptedBytes);
    return nil;
}

+ (NSString *)descryptAES:(NSString *)content key:(NSString *)key type:(AESType)type{
    if (content.length <= 0 || !content || !key || key.length <= 0) return nil;
    size_t keySize = 0;
    if (AESType128 == type) {
        keySize = kKeySize128;
    }else if (AESType256 == type){
        keySize = kKeySize256;
    }
    // 把 base64 String 转换成 NSData
    NSData *contentData = [[NSData alloc] initWithBase64EncodedString:content options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSUInteger dataLength = contentData.length;
    
    char keyPtr[keySize + 1];
    memset(keyPtr, 0, sizeof(keyPtr));
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    size_t decryptSize = dataLength + kCCBlockSizeAES128;
    void *decryptedBytes = malloc(decryptSize);
    size_t actualOutSize = 0;
    
    NSData *initVector = [kInitVector dataUsingEncoding:NSUTF8StringEncoding];
    
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
                                          kCCAlgorithmAES,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode, // 加密模式
                                          keyPtr,
                                          keySize,
                                          initVector.bytes,
                                          contentData.bytes,
                                          dataLength,
                                          decryptedBytes,
                                          decryptSize,
                                          &actualOutSize);
    
    if (kCCSuccess == cryptStatus) {
        NSString *string = [[NSString alloc] initWithData:[NSData dataWithBytesNoCopy:decryptedBytes length:actualOutSize] encoding:NSUTF8StringEncoding];
        return string;
    }
    free(decryptedBytes);
    return nil;
}

@end
