//
//  Student.m
//  Notification
//
//  Created by Hendy on 13-8-27.
//  Copyright (c) 2013年 Hendy. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationCallback:) name:@"Teacher High" object:nil];
    }
    return self;
}

- (void) notificationCallback:(NSNotification *)notificaction
{
    if ([notificaction.name isEqualToString:@"Teacher High"]) {
        NSLog(@"Go back to school and XX with the %@...", notificaction.object);
    }
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}

@end
