//
//  TimerController.m
//  Timer
//
//  Created by Hendy Ou on 13-8-22.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import "TimerController.h"

@interface TimerController ()
- (void) timerCallback:(NSTimer *) timer;
@end
@implementation TimerController
- (void)run
{
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerCallback:) userInfo:nil repeats:YES];
}

- (void) timerCallback:(NSTimer *) timer
{
    static int count = 0;
    
    NSLog(@"%d", count);
    
    if (count >= 10) {
        [timer invalidate];
    }
    
    count++;
}
@end
