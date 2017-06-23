//
//  NSObject+Cast.m
//  SafePrograming
//
//  Created by wangchao9 on 2017/4/26.
//  Copyright © 2017年 wangchao9. All rights reserved.
//

#import "NSObject+Cast.h"

@implementation NSObject (Cast)
+ (instancetype)cast:(id)object {
    if ([object isKindOfClass:self]) {
        return object;
    }

    return nil;
}

@end
