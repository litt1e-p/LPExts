//
//  UIView+Contain.h
//
//  Created by litt1e-p on 15/11/27.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Contain)

- (BOOL)containPoint:(CGPoint)point;
- (BOOL)containView:(UIView *)view;
- (BOOL)containRect:(CGRect)rect;
- (BOOL)containPartOfView:(UIView *)view;
- (BOOL)containPartOfRect:(CGRect)rect;

@end
