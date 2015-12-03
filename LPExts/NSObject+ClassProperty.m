//
//  NSObject+ClassProperty.m
//
//  Created by litt1e-p on 15/12/2.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "NSObject+ClassProperty.h"
#import <objc/runtime.h>

@implementation NSObject (ClassProperty)

+ (NSArray *)classProperties
{
    unsigned count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    
    NSMutableArray *rv = [NSMutableArray array];
    NSArray *commonProperties = @[@"hash", @"superclass", @"description", @"debugDescription"];
    unsigned i;
    for (i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        NSString *name = [NSString stringWithUTF8String:property_getName(property)];
        if (![commonProperties containsObject:name]) {
            [rv addObject:name];
        }
    }
    free(properties);
    return rv;
}

@end
