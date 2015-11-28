//
//  UIView+Contain.m
//
//  Created by litt1e-p on 15/11/27.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "UIView+Contain.h"

@implementation UIView (Contain)

- (BOOL)containPoint:(CGPoint)point
{
    return CGRectContainsPoint(self.frame , point);
}

- (BOOL)containView:(UIView *)view
{
    return CGRectContainsRect(self.frame, view.frame);
}

- (BOOL)containRect:(CGRect)rect
{
    return CGRectContainsRect(self.frame, rect);
}

- (BOOL)containPartOfView:(UIView *)view
{
    return CGRectIntersectsRect(self.frame, view.frame);
}

- (BOOL)containPartOfRect:(CGRect)rect
{
    return CGRectIntersectsRect(self.frame, rect);
}

@end
