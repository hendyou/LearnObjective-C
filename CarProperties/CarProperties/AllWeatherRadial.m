//
//  AllWeatherRadial.m
//  CarParts-Split
//
//  Created by Hendy on 12-11-4.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

@synthesize rainHandling;
@synthesize snowHandling;

- (id) initWithPressure:(float) p
             treadDepth:(float) td
           rainHandling:(float) rh
           snowHandling:(float) sh
{
    if (self = [super initWithPressure: p treadDepth: td]) {
        rainHandling = rh;
        snowHandling = sh;
    }
    
    return self;
}

- (NSString *) description
{
    return [NSString stringWithFormat: @"AllWeatherRadial: %.1f/%.f/%f/%.2f", pressure, treadDepth, rainHandling, snowHandling];
}

@end
