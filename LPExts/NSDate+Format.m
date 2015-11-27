//
//  NSDate+Format.m
//
//  Created by litt1e-p on 15/10/12.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "NSDate+Format.h"

@implementation NSDate (Format)

+ (NSDate *)dateFromStr:(NSString *)str withFormat:(NSString *)formatStr
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatStr];
    NSDate *date = [dateFormatter dateFromString:str];
    return date;
}

+ (NSString *)strFromDate:(NSDate *)date withFormat:(NSString *)formatStr
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatStr];
    NSString *dateStr = [dateFormatter stringFromDate:date];
    return dateStr;
}

@end
