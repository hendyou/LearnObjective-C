//
//  main.m
//  Timer
//
//  Created by Hendy Ou on 13-8-22.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TimerController.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        TimerController *timer = [[TimerController alloc] init];
        [timer run];
        [timer release];
        
    }
    [[NSRunLoop currentRunLoop] run];
    NSLog(@"end");
    return 0;
}

