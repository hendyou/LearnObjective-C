//
//  main.m
//  NSURLTest
//
//  Created by Hendy on 13-9-17.
//  Copyright (c) 2013年 Hendy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSURL *url = [NSURL URLWithString:@"https://wx.qq.com/"];
        NSLog(@"absoluteString: %@", url.absoluteString);
        NSLog(@"relativeString: %@", url.relativeString);
        NSLog(@"relativePath: %@", url.relativePath);
        NSLog(@"port: %@", url.port);
        NSLog(@"host: %@", url.host);
        NSLog(@"path: %@", url.path);
        NSLog(@"scheme: %@", url.scheme);
        NSLog(@"fragment: %@", url.fragment);
        NSLog(@"query: %@", url.query);
        NSLog(@"lastPathComponent: %@", url.lastPathComponent);
    }
    return 0;
}

