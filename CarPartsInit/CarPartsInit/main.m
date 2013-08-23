//
//  main.m
//  CarPartsInit
//
//  Created by Hendy on 12-12-11.
//  Copyright (c) 2012年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Automobile.h"
#import "Tire.h"
#import "Slant6.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Automobile *car = [[Automobile alloc] init];
        
        for (int i = 0; i < 4; i++) {
            Tire *tire = [[Tire alloc] initWithPressure: 23 + i treadDepth: 33 - i];
            
            [car setTire: tire atIndex: i];
            
            [tire release];
        }
        
        Engine *engine = [[Slant6 alloc] init];
        [car setEngine: engine];
        [engine release];
        [car print];
        
        [car release];
    }
    return 0;
}

