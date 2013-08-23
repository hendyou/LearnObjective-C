//
//  Garage.h
//  Car-Part-Predicate
//
//  Created by Hendy Ou on 13-2-2.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

@interface Garage : NSObject
{
    NSString *name;
    NSMutableArray *cars;
}

@property (readwrite, copy) NSString *name;
@property (readonly) NSMutableArray *cars;

- (void) addCar: (Car *) car;

- (void) print;

@end
