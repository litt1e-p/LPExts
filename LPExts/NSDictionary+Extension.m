//
//  NSDictionary+Extension.m
//
//  Created by litt1e-p on 15/10/12.
//  Copyright (c) 2015年 litt1e-p. All rights reserved.
//

#import "NSDictionary+Extension.h"

@implementation NSDictionary (Extension)

- (NSString *)KVStr
{
    __block NSString *kvStr = @"";
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        kvStr = [kvStr stringByAppendingFormat:@"%@%@", key, obj];
    }];
    return kvStr;
}

- (NSDictionary *)sortWithComparisonType:(NSComparisonResult)comparisonType
{
    if (comparisonType == NSOrderedSame) {
        return self;
    }
    NSArray *keys = [self allKeys];
    NSArray *sortedArr = [keys sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2 options:NSLiteralSearch|NSNumericSearch];
    }];
    if (comparisonType == NSOrderedDescending) {
        sortedArr = [[sortedArr reverseObjectEnumerator] allObjects];
    }
    __block NSMutableDictionary *result = [NSMutableDictionary dictionary];
    [sortedArr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [result setObject:[self objectForKey:obj] forKey:obj];
    }];
    return result;
}

+ (NSDictionary *)dictFromStr:(NSString *)str
{
    NSError * err;
    NSData *data =[str dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary * dict;
    if(data!=nil){
        dict = (NSDictionary *)[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&err];
    }
    return dict;
}

@end
