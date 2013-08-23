//
//  main.m
//  CarParts
//
//  Created by Hendy on 12-10-27.
//  Copyright (c) 2012年 Hendy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
@end //Tire

@implementation Tire

- (NSString *) description
{
    return @"I am a tire. I last a while";
}
     
@end //Tire


@interface AllWeatherRadial : Tire

@end

@implementation AllWeatherRadial

- (NSString *) description
{
    return @"I am a tire for rain or shine";
}

@end


@interface Engine : NSObject
@end //Engine

@implementation Engine

- (NSString *) description
{
    return @"I am an engine. Vrooom!";
}

@end //Engine

@interface V8 : Engine

@end //V8

@implementation V8

- (NSString *) description
{
    return @"I am a V8 engine. Vrooom!!!";
}

@end //V8


@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}

- (Engine *) engine;

- (void) setEngine: (Engine *) newEngine;

- (Tire *) tireAtIndex: (int) index;

- (void) setTire: (Tire *) tire atIndex: (int) index;

- (void) print;

@end //Car

@implementation Car

//- (id) init
//{
//    if (self = [super init]) {
//        engine = [Engine new];
//        
//        tires[0] = [Tire new];
//        tires[1] = [Tire new];
//        tires[2] = [Tire new];
//        tires[3] = [Tire new];
//    }
//    
//    return self;
//} //init

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

int main(int argc, const char * argv[])
{
    

    @autoreleasepool {
        
        Car *car;
        
        car = [Car new];
        
        for (int i = 0; i < 4; i++) {
            [car setTire:[AllWeatherRadial new] atIndex:i];
        }
        
        [car setEngine:[V8 new]];
        [car print];
        
    }
    return 0;
}

