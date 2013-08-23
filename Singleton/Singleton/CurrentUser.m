//
//  CurrentUser.m
//  Singleton
//
//  Created by Hendy Ou on 13-8-23.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import "CurrentUser.h"

static CurrentUser *singleton = nil;

@implementation CurrentUser

+ (id) shareUser
{
    @synchronized(self) {
        if (singleton == nil) {
            singleton = [[[self class] alloc] init];
        }
    }
    return singleton;
}

#pragma mark -下面的方法为了确保只有一个引用对象
+ (id)allocWithZone:(NSZone *)zone
{
    @synchronized(self) {
        if (singleton == nil) {
            singleton = [super allocWithZone:zone];
        }
    }
    return singleton;
}

- (id)copyWithZone:(NSZone *)zone
{
    return singleton;
}

- (id)retain
{
    return singleton;
}

- (oneway void)release
{
    //do nothing;
}

- (id)autorelease
{
    return singleton;
}

- (NSUInteger)retainCount {
    return UINT_MAX;
}
@end
