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

@synthesize name;
@synthesize engine;
@synthesize tires;

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
    Automobile *automobileCopy = [[[self class] allocWithZone: zone] init];
    automobileCopy.name = [[name copy] autorelease];
    automobileCopy.engine = [[engine copy] autorelease];
    int i = 0;
    for (Tire *tire in tires) {
        [automobileCopy setTire: [[tire copy] autorelease] atIndex: i++];
    }
    
    return automobileCopy;
}

@end
