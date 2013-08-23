//
//  Garage.m
//  Car-Part-Predicate
//
//  Created by Hendy Ou on 13-2-2.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import "Garage.h"

@implementation Garage

@synthesize name;
@synthesize cars;

- (void)addCar:(Car *)car
{
    if (cars == nil) {
        cars = [[NSMutableArray alloc] init];
    }
    [cars addObject: car];
}

- (void)print
{
    NSLog(@"%@", name);
    
    for (Car *car in cars) {
        NSLog(@"%@", car);
    }
}

- (void)dealloc
{
    [name release];
    [cars release];
    [super dealloc];
}

@end
