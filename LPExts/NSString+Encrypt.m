//
//  NSString+Encrypt.m
//
//  Created by litt1e-p on 15/11/2.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "NSString+Encrypt.h"
#import <CommonCrypto/CommonDigest.h>
#import "GTMBase64.h"

@implementation NSString (Encrypt)

- (NSString *)md5Hash
{
    const char *str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), result);
    
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH*2];
    for(int i = 0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02x",result[i]];
    }
    return ret;
}

- (NSString *)base64Encode
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [[NSString alloc] initWithData:[GTMBase64 encodeData:data] encoding:NSUTF8StringEncoding];
}

- (NSString *)base64Decode
{
    return [[NSString alloc] initWithData: [GTMBase64 decodeString:self] encoding:NSUTF8StringEncoding];
}

@end


NSAppTransportSecurity

NSAllowsArbitraryLoads