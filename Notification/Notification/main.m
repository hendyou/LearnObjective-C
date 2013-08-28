//
//  main.m
//  Notification
//
//  Created by Hendy on 13-8-27.
//  Copyright (c) 2013年 Hendy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"
#import "Student.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Teacher *teacher = [[Teacher alloc] init];
        Student *student = [[Student alloc] init];
        
        [teacher high];
        
//        [[NSRunLoop currentRunLoop] run];
        
        [teacher release];
        [student release];
        
    }
    return 0;
}

