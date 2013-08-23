//
//  main.m
//  RetainCount-1
//
//  Created by Hendy on 12-12-3.
//  Copyright (c) 2012年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RetainTracker : NSObject
@end

@implementation RetainTracker

- (id) init
{
    if (self = [super init]) {
        NSLog(@"init: Retain count of %ld", [self retainCount]);
    }
    return self;
}

- (void) dealloc
{
    NSLog(@"dealloc called : Bye!!");
    [super dealloc];
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        RetainTracker *tracker = [[RetainTracker alloc] init];
        
        [tracker retain];
        NSLog(@"retain count: %ld", [tracker retainCount]); //2
        
        [tracker retain];
        NSLog(@"retain count: %ld", [tracker retainCount]); //3
        
        [tracker release];
        NSLog(@"retain count: %ld", [tracker retainCount]); //2
        
        [tracker release];
        NSLog(@"retain count: %ld", [tracker retainCount]); //1
        
        [tracker release]; //0        
// 很奇怪, 释放了还可以运行retainCount方法, 而且还为0;
//        NSLog(@"retain count: %ld", [tracker retainCount]);
        
        
    }
    return 0;
}

