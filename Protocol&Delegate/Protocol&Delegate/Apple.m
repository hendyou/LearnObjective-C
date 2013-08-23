//
//  Apple.m
//  Protocol&Delegate
//
//  Created by Hendy Ou on 13-8-21.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import "Apple.h"

@implementation Apple

- (void)defaultMethod
{
    NSLog(@"默认不加修饰的方法为@required方法");
}

- (void)requiredMethod
{
    NSLog(@"@required方法");
}

@end
