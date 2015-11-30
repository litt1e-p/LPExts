//
//  UIImage+Color.h
//
//  Created by litt1e-p on 15/9/29.
//  Copyright (c) 2015年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)

+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)imageSize;
+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageFromColor:(UIColor *)color forSize:(CGSize)size withCornerRadius:(CGFloat)radius;

@end
