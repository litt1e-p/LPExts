//
//  UIButton+Block.m
//
//  Created by litt1e-p on 15/12/31.
//  Copyright (c) 2015年 litt1e-p. All rights reserved.
//

#import <objc/runtime.h>
#import "UIButton+Block.h"

@implementation UIButton (Block)

static char kAssociatedObjectKey;

- (void)handelWithEventBlock:(btnBlock)block
{
    if (block) {
        objc_setAssociatedObject(self, &kAssociatedObjectKey, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    [self addTarget:self action:@selector(btnEventAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnEventAction
{
    btnBlock block = objc_getAssociatedObject(self, &kAssociatedObjectKey);
    if (block) {
        block();
    }
}

@end
