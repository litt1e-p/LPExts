//
//  UIAlertView+Block.h
//
//  Created by litt1e-p on 15/12/11.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CompletionBlock) (NSInteger buttonIndex);

@interface UIAlertView (Block)<UIAlertViewDelegate>

- (void)showAlertViewWithCompletion:(CompletionBlock)completion;

@end
