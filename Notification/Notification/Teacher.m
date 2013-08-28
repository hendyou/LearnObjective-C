//
//  Teacher.m
//  Notification
//
//  Created by Hendy on 13-8-27.
//  Copyright (c) 2013年 Hendy. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (void) high
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Teacher High" object:@"Miss Li"];
}

@end
