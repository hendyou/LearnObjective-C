//
//  Engine.m
//  CarParts-Split
//
//  Created by Hendy on 12-11-4.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (id)init
{
    if (self = [super init]) {
        _horsepower = 145;
    }
    
    return self;
}

- (id)initWithHorsepower:(int)horsepower
{
    if (self = [super init]) {
        _horsepower = horsepower;
    }
    
    return self;
}

- (NSString *) description
{
    return @"I am an engine. Vrooom!";
}

- (id)copyWithZone:(NSZone *)zone
{
    Engine *engineCopy;
    engineCopy = [[[self class] allocWithZone: zone] init];
    [engineCopy setValue: [NSNumber numberWithInt: _horsepower] forKey: @"horsepower"];
    return engineCopy;
}

@end
