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
    __block NSMutableArray *resultArr = [NSMutableArray array];
    if (comparisonType == NSOrderedSame) {
        [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSMutableDictionary *tempDict = [NSMutableDictionary dictionary];
            [tempDict setObject:obj forKey:key];
            [resultArr addObject:tempDict];
        }];
        return resultArr;
    }
    NSArray *keys = [self allKeys];
    NSArray *sortedArr = [keys sortedArrayUsingComparator:^NSComparisonResult(NSString * obj1, NSString * obj2) {
        return [obj1 compare:obj2 options:NSLiteralSearch|NSNumericSearch];
    }];
    if (comparisonType == NSOrderedDescending) {
        sortedArr = [[sortedArr reverseObjectEnumerator] allObjects];
    }
    [sortedArr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSMutableDictionary *tempResult = [NSMutableDictionary dictionary];
        [tempResult setObject:[self objectForKey:obj] forKey:obj];
        [resultArr addObject:tempResult];
    }];
    return resultArr;
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
