//
//  CopyBigFile.m
//  FileHandleDemo
//
//  Created by Hendy Ou on 13-8-22.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import "CopyBigFile.h"

#define LENGTH 5000

@implementation CopyBigFile
- (void)run
{
    NSString *filePath = @"/Users/hendy/Downloads/SkyDrive.pkg";
    
    NSString *targetPath = @"/Users/hendy/Downloads/SkyDriveCopy.pkg";
    
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL success = [fm createFileAtPath:targetPath contents:nil attributes:nil];
    if (success) {
        NSLog(@"create copy file successfully");
    }
    //原来文件大小
    unsigned long long fileSize = [[fm attributesOfItemAtPath:filePath error:nil] fileSize];
    
    _totalSize = [NSNumber numberWithUnsignedLongLong:fileSize];
    
    NSFileHandle *inputHandle = [NSFileHandle fileHandleForReadingAtPath:filePath];
    NSFileHandle *outputHandle = [NSFileHandle fileHandleForWritingAtPath:targetPath];
    
    NSLog(@"start to copy...");
    
    while (true) {
        @autoreleasepool {
            NSData *data = [inputHandle readDataOfLength:LENGTH];
            [outputHandle writeData:data];
            //打印当前的写入大小 bytes
            //            NSLog(@"file size: %lld bytes", [[fm attributesOfItemAtPath:targetPath error:nil] fileSize]);
            
            unsigned long long size = [[fm attributesOfItemAtPath:targetPath error:nil] fileSize];
            self.targetSize = [NSNumber numberWithUnsignedLongLong:size];
            if (data.length < LENGTH) {
                break;
            }
        }
    }
    
    [inputHandle closeFile];
    [outputHandle closeFile];
    NSLog(@"copy done!");
}

- (void)dealloc
{
//    [self removeObserver:self forKeyPath:NSFileSize];
    [_targetSize release];
    [_totalSize release];
    [super dealloc];
}

@end
