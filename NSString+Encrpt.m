//
//  NSString+Encrpt.m
//  DragonBallAvatar
//
//  Created by litt1e-p on 15/11/2.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "NSString+Encrpt.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Encrpt)

- (NSString *)MD5
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

@end
