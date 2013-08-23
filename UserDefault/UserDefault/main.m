//
//  main.m
//  UserDefault
//
//  Created by Hendy Ou on 13-8-23.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
        NSString *value = @"Hendy";
        [userDefault setObject:value forKey:@"key"];
        if ([userDefault synchronize]) {
            NSLog(@"done");
        }
        
        NSString *value2 = [userDefault objectForKey:@"key"];
        NSLog(@"value: %@", value2);
    }
    return 0;
}

