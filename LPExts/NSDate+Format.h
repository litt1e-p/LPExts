//
//  NSDate+Format.h
//
//  Created by litt1e-p on 15/10/12.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Format)

+ (NSDate *)dateFromStr:(NSString *)str withFormat:(NSString *)formatStr;
+ (NSString *)strFromDate:(NSDate *)date withFormat:(NSString *)formatStr;

@end
