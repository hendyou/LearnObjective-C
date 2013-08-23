//
//  main.m
//  CarProperties
//
//  Created by Hendy on 12-12-11.
//  Copyright (c) 2012年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Automobile.h"
#import "AllWeatherRadial.h"
#import "Slant6.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Automobile *car = [[Automobile alloc] init];
        
        for (int i = 0; i < 4; i++) {
            AllWeatherRadial *tire = [[AllWeatherRadial alloc] initWithPressure:23.22 + i treadDepth:33.44 - i rainHandling:42.454 + i snowHandling:64.454 -i ];
            
            tire.rainHandling = 88.4333;
            
            [car setTire: tire atIndex: i];
            
            [tire release];
        }
        
        car.engine = [[Slant6 alloc] init];
        car.name = @"Herbie";
        [car print];
        
        [car release];
        
    }
    return 0;
}

