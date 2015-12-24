//
//  UIActionSheet+Block.h
//
//  Created by litt1e-p on 15/12/23.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CompletionBlock) (NSInteger buttonIndex);

@interface UIActionSheet (Block)

/** example */
/** 
 UIActionSheet *as = [[UIActionSheet alloc] initWithTitle:@"title" delegate:nil cancelButtonTitle:@"cancel" destructiveButtonTitle:@"ok" otherButtonTitles:@"index1", @"index2", @"index3", @"index4", nil];
 [as showActionSheetInView:self.view withCompletion:^(NSInteger buttonIndex) {
 NSLog(@"as click : %ld", (long)buttonIndex);
 }];
 */

- (void)showActionSheetInView:(UIView *)view withCompletion:(CompletionBlock)completion;

@end
