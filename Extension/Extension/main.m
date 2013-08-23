//
//  main.m
//  Extension
//
//  Created by Hendy Ou on 13-8-21.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Boy.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Boy *boy = [[Boy alloc] init];
        [boy makeLove];
//        [boy masturbate];
        
    }
    return 0;
}

