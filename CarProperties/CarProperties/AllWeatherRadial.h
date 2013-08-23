//
//  AllWeatherRadial.h
//  CarParts-Split
//
//  Created by Hendy on 12-11-4.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import "Tire.h"

@interface AllWeatherRadial : Tire
{
    float rainHandling;
    float snowHandling;
}

@property float rainHandling;
@property float snowHandling;

- (id) initWithPressure:(float) p
             treadDepth:(float) td
           rainHandling:(float) rh
           snowHandling:(float) sh;

@end
