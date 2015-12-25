//
//  NSDictionary+Extension.h
//
//  Created by litt1e-p on 15/10/12.
//  Copyright (c) 2015年 litt1e-p. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Extension)

#pragma mark - 
- (NSString *)KVStr;
- (NSString *)KVUrlParamStrWithComparison:(NSComparisonResult)comparisonType;
- (NSArray *)sortWithComparisonType:(NSComparisonResult)comparisonType;
+ (NSDictionary *)dictFromStr:(NSString *)str;

@end
