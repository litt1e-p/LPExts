//
//  UIButton+Block.h
//
//  Created by litt1e-p on 15/12/31.
//  Copyright (c) 2015年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^btnBlock)();

@interface UIButton (Block)

- (void)handelWithEventBlock:(btnBlock)block;

@end
