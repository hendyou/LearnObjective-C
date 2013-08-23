//
//  main.m
//  KVC
//
//  Created by Hendy Ou on 13-8-23.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "AppleDevice.h"

#define kName @"name"
#define kPrice @"price"
#define kDevices @"appleDevices"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        AppleDevice *iPhone = [[AppleDevice alloc] init];
        [iPhone setValue:@"iPhone" forKey:kName];
        [iPhone setValue:[NSNumber numberWithInt:5000] forKey:kPrice];
        
        AppleDevice *iPad = [[AppleDevice alloc] init];
        [iPad setValue:@"iPad" forKey:kName];
        [iPad setValue:[NSNumber numberWithInt:4000] forKey:kPrice];
        
        AppleDevice *iMac = [[AppleDevice alloc] init];
        [iMac setValue:@"iMac" forKey:kName];
        [iMac setValue:[NSNumber numberWithInt:9000] forKey:kPrice];
        
        NSArray *array = @[iPhone, iPad, iMac];
        
        [iPhone release];
        [iPad release];
        [iMac release];
        
        Person *person = [[Person alloc] init];
        [person setValue:@"Hendy" forKey:kName];
        NSLog(@"%ld", array.retainCount);
        [person setValue:array forKey:kDevices];
        NSLog(@"%ld", array.retainCount);        
        
        NSNumber *sum = [person valueForKeyPath:@"appleDevices.@sum.price"];
        NSNumber *average = [person valueForKeyPath:@"appleDevices.@avg.price"];
        NSLog(@"Total prices: %@", sum);
        NSLog(@"Average prices: %@", average);
        [person release];
    }
    return 0;
}

