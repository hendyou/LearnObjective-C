//
//  CopyBigFile.m
//  FileHandleDemo
//
//  Created by Hendy Ou on 13-8-22.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import "CopyBigFile.h"

@implementation CopyBigFile
- (void)run
{
    NSString *filePath = @"/Users/hendy/Downloads/3.zip";
    
    NSString *targetPath = @"/Users/hendy/Downloads/3copy.zip";
    
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL success = [fm createFileAtPath:targetPath contents:nil attributes:nil];
    if (success) {
        NSLog(@"create copy file successfully");
    }
    
    NSFileHandle *inputHandle = [NSFileHandle fileHandleForReadingAtPath:filePath];
    NSFileHandle *outputHandle = [NSFileHandle fileHandleForWritingAtPath:targetPath];
    
    NSLog(@"start to copy...");
    
    while (true) {
            @autoreleasepool {
            NSData *data = [inputHandle readDataOfLength:5000];
            if (data.length == 0) {
                break;
            }
            [outputHandle writeData:data];
//            NSLog(@"file size: %lld bytes", [[fm attributesOfItemAtPath:targetPath error:nil] fileSize]);
        }
    }
    
    [inputHandle closeFile];
    [outputHandle closeFile];
    NSLog(@"copy done!");
}


@end
