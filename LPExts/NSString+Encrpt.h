//
//  NSString+Encrpt.h
//  DragonBallAvatar
//
//  Created by litt1e-p on 15/11/2.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Encrpt)

- (NSData *)MD2Sum;
- (NSData *)MD4Sum;
- (NSData *)MD5Sum;

- (NSData *)SHA1Hash;
- (NSData *)SHA224Hash;
- (NSData *)SHA256Hash;
- (NSData *)SHA384Hash;
- (NSData *)SHA512Hash;

@end
