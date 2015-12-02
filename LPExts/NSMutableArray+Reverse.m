//
//  NSMutableArray+Reverse.m
//
//  Created by litt1e-p on 15/11/30.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "NSMutableArray+Reverse.h"

@implementation NSMutableArray (Reverse)

- (NSMutableArray *)reverse
{
    if ([self count] <= 1) {
        return [NSMutableArray array];
    }
    NSUInteger i = 0;
    NSUInteger j = [self count] - 1;
    while (i < j) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:j]; 
        i++;
        j--;
    }
    return self;
}

@end
