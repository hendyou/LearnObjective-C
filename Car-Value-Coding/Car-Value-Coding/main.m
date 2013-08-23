//
//  main.m
//  Car-Value-Coding
//
//  Created by Hendy Ou on 13-2-1.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Car *car = [[[Car alloc] init] autorelease];
        
        car.engine = [[[Slant6 alloc] init] autorelease];
        car.name = @"Coralla";
        car.make = @"Toyota";
        car.model = @"VVT-i";
        car.modelYear = 2013;
        car.numberOfDoors = 4;
        car.mileage = 1103445.31;
        
        for (int i = 0; i < 4; i++) {
            Tire *tire = [[AllWeatherRadial alloc] init];
            [car setTire: tire atIndex: i];
            [tire release];
        }
        
        NSLog(@"Car is %@", car);
        NSLog(@"Car's model year is %@", [car valueForKey: @"modelYear"]);
        NSLog(@"Car's engine horsepower: %@", [car valueForKeyPath: @"engine.horsepower"]);
        
        [car setValue: [NSNumber numberWithInt: 230] forKeyPath: @"engine.horsepower"];
        NSLog(@"Car's engine horsepower: %@", [car valueForKeyPath: @"engine.horsepower"]);
        
        
    }
    return 0;
}

