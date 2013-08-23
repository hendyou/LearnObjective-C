//
//  Car.h
//  CarParts-Split
//
//  Created by Hendy on 12-11-4.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Engine;
@class Tire;

@interface Automobile : NSObject

{
    Engine *engine;
    Tire *tires[4];
}

- (Engine *) engine;

- (void) setEngine: (Engine *) newEngine;

- (Tire *) tireAtIndex: (int) index;

- (void) setTire: (Tire *) tire atIndex: (int) index;

- (void) print;

@end
