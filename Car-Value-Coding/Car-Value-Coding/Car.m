//
//  Car.m
//  CarParts-Split
//
//  Created by Hendy on 12-11-4.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize name;
@synthesize engine;
@synthesize tires;

@synthesize make;
@synthesize model;
@synthesize modelYear;
@synthesize numberOfDoors;
@synthesize mileage;

- (id) init
{
    if (self = [super init]) {
        tires = [[NSMutableArray alloc] init];
    }
    
    for (int i = 0; i < 4; i++) {
        [tires addObject: [NSNull null]];
    }
    
    return self;
}


- (Tire *) tireAtIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in tireAtIndex:", index);
        //        exit(1);
        return nil;
    }
    Tire *tire = [tires objectAtIndex: index];
    return tire;
}

- (void) setTire:(Tire *)tire atIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
    } else {
        [tires replaceObjectAtIndex: index withObject: tire];
    }
}

- (void) print
{
    NSLog(@"%@", engine);
    
    for (Tire *tire in tires) {
        NSLog(@"%@", tire);
    }
} //print

- (void) dealloc
{
    [tires release];
    [engine release];
    
    [super dealloc];
}

- (id)copyWithZone:(NSZone *)zone
{
    Car *carCopy = [[[self class] allocWithZone: zone] init];
    carCopy.name = name;
    carCopy.engine = [[engine copy] autorelease];
    
    int i = 0;
    for (Tire *tire in tires) {
        [carCopy setTire: [[tire copy] autorelease] atIndex: i++];
    }
    
    carCopy.make = make;
    carCopy.model = model;
    carCopy.modelYear = modelYear;
    carCopy.numberOfDoors = numberOfDoors;
    carCopy.mileage = mileage;
    
    return carCopy;
}

- (NSString *)description
{
    return [NSString stringWithFormat:
            @"%@, a %d %@ %@, has %d doors, %.1f miles and %@ tires",
            name, modelYear, make, model, numberOfDoors, mileage, [self valueForKeyPath: @"tires.@count"] ];
}

@end
