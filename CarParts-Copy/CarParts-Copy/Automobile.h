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

@interface Automobile : NSObject <NSCopying>

{
    NSString *name;
    Engine *engine;
    NSMutableArray *tires;
}

@property (copy) NSString *name;
@property (retain) Engine *engine;
@property (readonly) NSMutableArray *tires;

- (Tire *) tireAtIndex: (int) index;

- (void) setTire: (Tire *) tire atIndex: (int) index;

- (void) print;

@end
