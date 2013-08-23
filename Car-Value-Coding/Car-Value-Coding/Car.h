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

@interface Car : NSObject <NSCopying>

{
    NSString *name;
    Engine *engine;
    NSMutableArray *tires;
    
    NSString *make;
    NSString *model;
    int modelYear;
    int numberOfDoors;
    float mileage;
}

@property (copy) NSString *name;
@property (retain) Engine *engine;
@property (readonly) NSMutableArray *tires;

@property (copy) NSString *make;
@property (copy) NSString *model;
@property (readwrite) int modelYear;
@property int numberOfDoors;
@property (readwrite) float mileage;

- (Tire *) tireAtIndex: (int) index;

- (void) setTire: (Tire *) tire atIndex: (int) index;

- (void) print;

@end
