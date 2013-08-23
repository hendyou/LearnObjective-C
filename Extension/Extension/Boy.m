//
//  Boy.m
//  Extension
//
//  Created by Hendy Ou on 13-8-21.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import "Boy.h"

//延展的写法,其实相当于JAVA的private方法
@interface Boy ()

- (void) masturbate;

@end

@implementation Boy

- (void)makeLove
{
    NSLog(@"having sex..");
    [self masturbate];
    [self watchAV];
}

- (void)masturbate
{
    NSLog(@"masturbating.. cool");
}

//还可以直接写private方法, 不过用Extension方便归类
- (void) watchAV
{
    NSLog(@"watching AV... well");
}

@end
