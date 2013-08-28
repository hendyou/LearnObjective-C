//
//  main.m
//  KVO
//
//  Created by Hendy on 13-8-24.
//  Copyright (c) 2013年 Hendy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        User *user = [[User alloc] init];
        [user copyFile];
        
    }
    return 0;
}

