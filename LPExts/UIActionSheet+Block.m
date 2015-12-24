//
//  UIActionSheet+Block.m
//
//  Created by litt1e-p on 15/12/23.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "UIActionSheet+Block.h"
#import <objc/runtime.h>

@interface UIActionSheet()<UIActionSheetDelegate>

@end

@implementation UIActionSheet (Block)

static char const kActionSheetCompletionKey;

- (void)showActionSheetInView:(UIView *)view withCompletion:(CompletionBlock)completion
{
    if (completion) {
        objc_removeAssociatedObjects(self);
        objc_setAssociatedObject(self, &kActionSheetCompletionKey, completion, OBJC_ASSOCIATION_COPY);
        self.delegate = self;
    }
    [self showInView:view];
}


@end
