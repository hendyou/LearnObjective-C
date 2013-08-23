//
//  main.m
//  FileHandleDemo
//
//  Created by Hendy Ou on 13-8-22.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WriteDateToFile.h"
#import "CopyBigFile.h"

#pragma mark 文件追加内容
void appendFile()
{
    //获取用户根路径
    NSString *home = NSHomeDirectory();
    NSLog(@"Home directory: %@", home);
    NSString *filePath = [home stringByAppendingString:@"/test.txt"];
    NSLog(@"File path: %@", filePath);
    //判断文件是否存在
    BOOL isExist = [[NSFileManager defaultManager] fileExistsAtPath: filePath];
    NSLog(@"%@", isExist == YES ? @"YES" : @"NO");
    
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath: filePath];
    //跳到文件的某个位置
    [fileHandle seekToEndOfFile];
//    [fileHandle seekToFileOffset: 1];
    NSString *appendStr = @"!!";
    //写入内容
    NSData *data = [appendStr dataUsingEncoding: NSUTF8StringEncoding];
    [fileHandle writeData: data];
    //关闭
    [fileHandle closeFile];
    
}

#pragma mark 读取数据
void readFile()
{
    NSString *home = NSHomeDirectory();
    NSString *filePath = [home stringByAppendingPathComponent:@"test.txt"];
    NSLog(@"File path: %@", filePath);
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath: filePath];
    //判断文件是否存在
    BOOL isExist = [[NSFileManager defaultManager] fileExistsAtPath: filePath];
    NSLog(@"%@", isExist == YES ? @"YES" : @"NO");
    NSUInteger length = [[fileHandle availableData] length];
    
    [fileHandle seekToFileOffset: length / 2];
    //读取文件内容
    NSData *data = [fileHandle readDataToEndOfFile];
    //NSData -> NSString
    NSString *str = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
    NSLog(@"Read str: %@", str);
    
    [fileHandle closeFile];
}

#pragma mark 复制文件
void copyFile()
{
    NSString *home = NSHomeDirectory();
    NSString *filePath = [home stringByAppendingString:@"/test.txt"];
    NSString *copyPath = [home stringByAppendingString:@"/testCopy.txt"];
    
//    NSString *filePath = @"/Users/hendy/Downloads/3.zip";
//    NSString *copyPath = @"/Users/hendy/Downloads/3copy.zip";
    
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath: filePath];
    NSData *data = [fileHandle readDataToEndOfFile];
    
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL isSuccess = [fm createFileAtPath: copyPath contents: data attributes: nil];
    if (isSuccess) {
        NSLog(@"Copy successfully!");
    }
    
    [fileHandle closeFile];
}

void writeDateToFile()
{
    WriteDateToFile *writeDate = [[WriteDateToFile alloc] init];
    
    [writeDate run];
    
    [writeDate release];
}

void copyBigFile()
{
    CopyBigFile *copyBigFile = [[CopyBigFile alloc] init];
    
    [copyBigFile run];
    
    [copyBigFile release];
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
//        appendFile();
//        readFile();
//        copyFile();
        
//        writeDateToFile();
        copyBigFile();
    }
    
    
    return 0;
}




