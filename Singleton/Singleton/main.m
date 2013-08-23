//
//  main.m
//  Singleton
//
//  Created by Hendy Ou on 13-8-23.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CurrentUser.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        CurrentUser *user1 = [CurrentUser shareUser];
        CurrentUser *user2 = [CurrentUser shareUser];
        CurrentUser *user3 = [[CurrentUser alloc] init];
        NSLog(@"");
        
    }
    return 0;
}

