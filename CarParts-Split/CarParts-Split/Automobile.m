//
//  Car.m
//  CarParts-Split
//
//  Created by Hendy on 12-11-4.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import "Automobile.h"
#import "Tire.h"
#import "Engine.h"

@implementation Automobile

- (Engine *) engine
{
    return engine;
}

- (void) setEngine:(Engine *)newEngine
{
    engine = newEngine;
}

- (Tire *) tireAtIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in tireAtIndex:", index);
        //        exit(1);
        return nil;
    }
    return tires[index];
}

- (void) setTire:(Tire *)tire atIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
    } else {
        tires[index] = tire;
    }
}

- (void) print
{
    NSLog(@"%@", engine);
    
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
} //print



@end
