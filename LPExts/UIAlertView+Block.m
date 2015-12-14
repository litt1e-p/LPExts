//
//  UIAlertView+Block.m
//
//  Created by litt1e-p on 15/12/11.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "UIAlertView+Block.h"
#import <objc/runtime.h>

@implementation UIAlertView (Block)

static char const kAlertViewCompletionKey;

- (void)showAlertViewWithCompletion:(CompletionBlock)completion
{
    if (completion) {
        objc_removeAssociatedObjects(self);
        objc_setAssociatedObject(self, &kAlertViewCompletionKey, completion, OBJC_ASSOCIATION_COPY);
        self.delegate = self;
    }
    [self show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    CompletionBlock block = objc_getAssociatedObject(self, &kAlertViewCompletionKey);
    if (block) {
        block(buttonIndex);
    }
}

@end
