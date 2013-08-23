//
//  main.m
//  CarParts-Split
//
//  Created by Hendy on 12-11-4.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Automobile.h"
#import "Engine.h"
#import "Tire.h"
#import "V8.h"
#import "AllWeatherRadial.h"
#import "Slant6.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Automobile *car;
        
        car = [Automobile new];
        
        for (int i = 0; i < 4; i++) {
            [car setTire:[AllWeatherRadial new] atIndex:i];
        }
                
//        [car setEngine:[V8 new]];
        [car setEngine:[Slant6 new]];
        
        [car print];
        
    }
    return 0;
}

