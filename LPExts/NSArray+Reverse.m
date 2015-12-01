//
//  NSArray+Reverse.m
//
//  Created by litt1e-p on 15/11/30.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "NSArray+Reverse.h"

@implementation NSArray (Reverse)

- (NSArray *)reverse
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:[self count]];
    NSEnumerator *enumerator = [self reverseObjectEnumerator];
    for (id element in enumerator) {
        [array addObject:element];
    }
    return array;
}

@end
