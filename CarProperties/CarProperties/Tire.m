//
//  Tire.m
//  CarParts-Split
//
//  Created by Hendy on 12-11-4.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (id) initWithPressure:(float)p treadDepth:(float)td
{
    if (self = [super init]) {
        pressure = p;
        treadDepth = td;
    }
    
    return self;
}

- (void) setPressure: (float) p
{
    pressure = p;
} // setPressure


- (float) pressure
{
    return (pressure);
} // pressure


- (void) setTreadDepth: (float) td
{
    treadDepth = td;
} // setTreadDepth


- (float) treadDepth
{
    return (treadDepth);
} // treadDepth

- (NSString *) description
{
    NSString *description = [NSString stringWithFormat: @"Tire: Pressure: %.1f, TreadDepth: %.f", pressure, treadDepth];
    return description;
}

@end
