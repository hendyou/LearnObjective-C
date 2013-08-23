//
//  main.m
//  CarParts-Copy
//
//  Created by Hendy on 13-1-5.
//  Copyright (c) 2013年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AllWeatherRadial.h"
#import "Automobile.h"
#import "Slant6.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //******Foundation里面对于不可变对象的copy相当于retain!!!!!!!!!!!!!
        //mutableCopy实现了真正的copy
        
//        Automobile *car = [[Automobile alloc] init];
//        Engine *engine = [[Slant6 alloc] init];
//        car.engine = engine;
//        [engine release];
//        
//        NSLog(@"tires count: %ld", [car.tires count]);
//        for (int i = 0; i < [car.tires count]; i++) {
//            AllWeatherRadial *tire = [[AllWeatherRadial alloc] initWithPressure: 34.234 + i treadDepth: 23.34 + i rainHandling: 56.3 + i snowHandling: 76.4543 + i];
//            [car setTire: tire atIndex: i];
//            [tire release];
//        }
//        
//        Automobile *car2 = car;
//        
//        NSLog(@"car == car2 ? %@", car == car2 ? @"true" : @"false");
//        
//        Automobile *carCopy = [car copy];
//        
//        NSLog(@"car == carCopy ? %@", car == carCopy ? @"true" : @"false");
//        NSLog(@"car equals carCopy ? %@", [car isEqualTo: carCopy] ? @"true" : @"false");
//        
//        [car print];
//        [carCopy print];
//        
//        [car release];
//        [carCopy release];
        
        
        /** copy */
        /**
        Automobile *car1 = [[Automobile alloc] init];
        Automobile *car2 = [[Automobile alloc] init];
        NSArray *array = @[car1, car2];
        for (Automobile *car in array) {
            NSLog(@"%@, %ld", car, car.retainCount);
        }
        
        NSLog(@"%p, %ld", array, array.retainCount);
        
        //!!!!!!Foundation里面对于不可变对象的copy相当于retain!!!!!!!!!!!!!
        //mutiableCopy实现了真正的copy
        //其实就是return [self retain];
        NSArray *arrayCopy = [array copy];
        for (Automobile *car in arrayCopy) {
            NSLog(@"%@, %ld", car, car.retainCount);
        }
        
        NSLog(@"%p, %ld", arrayCopy, arrayCopy.retainCount);
        NSLog(@"%ld, %ld", array.retainCount, arrayCopy.retainCount);
        
        [car1 release];
        [car2 release];
         */
        
        /** mutableCopy */
        Automobile *car1 = [[Automobile alloc] init];
        Automobile *car2 = [[Automobile alloc] init];
        NSMutableArray *array = [NSMutableArray arrayWithObjects:car1, car2, nil];
        for (Automobile *car in array) {
            NSLog(@"%@, %ld", car, car.retainCount);
        }
        
        NSLog(@"%p, %ld", array, array.retainCount);
        
        //mutableCopy实现了真正的copy
        //不过里面的对象其实也只是[item retian]而已
        NSMutableArray *arrayCopy = [array mutableCopy];
        for (Automobile *car in arrayCopy) {
            NSLog(@"%@, %ld", car, car.retainCount);
        }
        
        NSLog(@"%p, %ld", arrayCopy, arrayCopy.retainCount);
        NSLog(@"%ld, %ld", array.retainCount, arrayCopy.retainCount);
        
        [car1 release];
        [car2 release];
    }
    return 0;
}

