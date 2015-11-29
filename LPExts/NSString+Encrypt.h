//
//  NSString+Encrypt.h
//
//  Created by litt1e-p on 15/11/2.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Encrypt)

- (NSData *)MD2Sum;
- (NSData *)MD4Sum;
- (NSData *)MD5Sum;

- (NSData *)SHA1Hash;
- (NSData *)SHA224Hash;
- (NSData *)SHA256Hash;
- (NSData *)SHA384Hash;
- (NSData *)SHA512Hash;

- (NSString *)base64Encode;
- (NSString *)base64Decode;

@end
