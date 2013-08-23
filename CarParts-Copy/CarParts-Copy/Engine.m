//
//  Engine.m
//  CarParts-Split
//
//  Created by Hendy on 12-11-4.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (NSString *) description
{
    return @"I am an engine. Vrooom!";
}

- (id)copyWithZone:(NSZone *)zone
{
    Engine *engineCopy;
    engineCopy = [[[self class] allocWithZone: zone] init];
    return engineCopy;
}

@end
