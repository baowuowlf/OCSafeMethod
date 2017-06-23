//
//  Dispatch.m
//  SafePrograming
//
//  Created by wangchao9 on 2017/4/26.
//  Copyright © 2017年 wangchao9. All rights reserved.
//

#import "Dispatch.h"

@implementation Dispatch
+ (void)ui:(void (^)())block {
    if ([NSThread isMainThread]) {
        block();
    } else {
        dispatch_async(dispatch_get_main_queue(), ^{
            block();
        });
    }
}

@end

#if DEBUG
void testDispatch(){
    [Dispatch ui:^{}];
}

#endif // if DEBUG
