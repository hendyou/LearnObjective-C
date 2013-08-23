//
//  main.m
//  Car-Part-Predicate
//
//  Created by Hendy Ou on 13-2-2.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Garage.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

Car *makeCar(NSString *name, NSString *make, NSString *model, int modelYear, int numberOfDoors, float mileage, int horsepower)
{
    Car *car = [[[Car alloc] init] autorelease];
    car.name = name;
    car.make = make;
    car.model = model;
    car.modelYear = modelYear;
    car.numberOfDoors = numberOfDoors;
    car.mileage = mileage;
    
    car.engine = [[[Slant6 alloc] init] autorelease];
    [car setValue: [NSNumber numberWithInt: horsepower] forKeyPath: @"engine.horsepower"];
    
    for (int i = 0; i < 4; i++) {
        [car setTire: [[[AllWeatherRadial alloc] initWithPressure: 23.4 + i treadDepth:44.434 + i rainHandling: 223.344 + i snowHandling: 334.2 + i] autorelease] atIndex: i];
    }
    
    return car;
}

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Garage *garage = [[Garage alloc] init] ;
        
        Car *car = makeCar(@"Corolla", @"Toyota", @"CRX", 2012, 4, 1123343.343, 230);
        [garage addCar: car];
        
        car = makeCar(@"CROWN", @"Toyota", @"CRX", 2012, 4, 1123343.343, 300);
        [garage addCar: car];
        
        car = makeCar(@"COROLLAEX", @"Toyota", @"CRX", 2012, 4, 1123343.343, 260);
        [garage addCar: car];
        
        car = makeCar(@"VIOS", @"Toyota", @"CRX", 2012, 4, 1123343.343, 200);
        [garage addCar: car];
        
        car = makeCar(@"REIZ", @"Toyota", @"CRX", 2012, 4, 1123343.343, 220);
        [garage addCar: car];
        
        NSPredicate *predicate;
        NSString *key = @"name";
        NSString *name = @"REIZ";
        predicate = [NSPredicate predicateWithFormat: @"%K == %@", key, name];
        
        bool isMatch = [predicate evaluateWithObject: car];
        NSLog(@"%s, %@", isMatch ? "yes" : "no", car.name);
        
        //马力大于220.23的cars
        predicate = [NSPredicate predicateWithFormat: @"engine.horsepower > 220.23"];
        NSArray *results = [garage.cars filteredArrayUsingPredicate: predicate];
        NSLog(@"马力大于220.23的cars:%@", [results valueForKey: @"name"]);
        
        //从carsCopy中删除不符合条件的cars
        NSMutableArray *carsCopy = [garage.cars mutableCopy];
        [carsCopy filterUsingPredicate: predicate];
        NSLog(@"从carsCopy中删除不符合条件的cars:%@, total: %ld", [carsCopy valueForKey: @"name"], [carsCopy count]);
        
        //马力在220(包含)和260(包含)之间的cars
        predicate = [NSPredicate predicateWithFormat: @"engine.horsepower BETWEEN {220, 260}"];
        results = [garage.cars filteredArrayUsingPredicate: predicate];
        NSLog(@"马力在220(包含)和260(包含)之间的cars:%@", [results valueForKey: @"name"]);
        NSArray *between = [NSArray arrayWithObjects:
                            [NSNumber numberWithInt: 220],
                            [NSNumber numberWithInt: 260], nil];
        predicate = [NSPredicate predicateWithFormat: @"engine.horsepower BETWEEN %@", between];
        results = [garage.cars filteredArrayUsingPredicate: predicate];
        NSLog(@"马力在220(包含)和260(包含)之间的cars:%@", [results valueForKey: @"name"]);
        
        //马力是220或260的cars
        NSArray *in = between;
        predicate = [NSPredicate predicateWithFormat: @"engine.horsepower IN %@", in];
        results = [garage.cars filteredArrayUsingPredicate: predicate];
        NSLog(@"马力是220或260的cars:%@", [results valueForKey: @"name"]);
        
        //self用法
        NSArray *inNames = [NSArray arrayWithObjects: @"VIOS", @"CROWN", @"Corolla", nil];
        NSArray *cars = garage.cars;
        predicate = [NSPredicate predicateWithFormat: @"SELF.name IN %@", inNames];
        results = [cars filteredArrayUsingPredicate: predicate];
        NSLog(@"self用法:%@", [results valueForKey: @"name"]);
        
        NSArray *carNames = [cars valueForKey: @"name"];
        predicate = [NSPredicate predicateWithFormat: @"SELF IN %@", inNames];
        results = [carNames filteredArrayUsingPredicate: predicate];
        NSLog(@"self用法:%@", results);
        
        //字符串运算符
        predicate = [NSPredicate predicateWithFormat: @"SELF BEGINSWITH 'C'"];
        results = [carNames filteredArrayUsingPredicate: predicate];
        NSLog(@"以'C'开头的cars:%@", results);
        
//        predicate = [NSPredicate predicateWithFormat: @"SELF CONTAINS 'O' || SELF CONTAINS 'o'"];
        //[c]不区分大小写 [d]不区分发音符号
        predicate = [NSPredicate predicateWithFormat: @"SELF CONTAINS[cd] 'O'"];
        results = [carNames filteredArrayUsingPredicate: predicate];
        NSLog(@"名字有'O'或'o'的cars:%@", results);
        
        //LIKE运算符
        //[c]不区分大小写 [d]不区分发音符号
        //?表示一个字符, *表示任意多个字符
        predicate = [NSPredicate predicateWithFormat: @"SELF LIKE[cd] '??rO*'"];
        results = [carNames filteredArrayUsingPredicate: predicate];
        NSLog(@"名字有'ro'(不区分大小写)的cars:%@", results);
        
        //MATCHES运算符:匹配正则表达式
        predicate = [NSPredicate predicateWithFormat: @"SELF MATCHES '^[a-zA-Z]*EX|VI[a-zA-Z]*$'"];
        results = [carNames filteredArrayUsingPredicate: predicate];
        NSLog(@"MATCHES运算符(匹配正则表达式):%@", results);
        
        [garage release];
    }
    return 0;
}
