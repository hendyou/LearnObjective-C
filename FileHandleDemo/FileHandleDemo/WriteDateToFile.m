//
//  WriteDateToFile.m
//  FileHandleDemo
//
//  Created by Hendy Ou on 13-8-22.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import "WriteDateToFile.h"

@implementation WriteDateToFile
//@synthesize fileHandle;
- (void)run
{
    NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"date.txt"];
    NSFileManager *fm = [NSFileManager defaultManager];
    [fm createFileAtPath:filePath contents:nil attributes:nil];
    
    fileHandle = [NSFileHandle fileHandleForWritingAtPath:filePath];
    
    SEL sel = @selector(writeDateToFile:);
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:sel userInfo:nil repeats:YES];
    NSLog(@"start writing...");
    
    [[NSRunLoop currentRunLoop] runUntilDate:[[NSDate date] dateByAddingTimeInterval:10]];
    
    [timer invalidate];
    
    NSLog(@"end writing!");
    
    [fileHandle closeFile];
    
}

- (void)writeDateToFile:(NSTimer *) timer;
{
    @autoreleasepool {
        
        NSDate *date = [NSDate date];
        NSString *dateStr = [self formatDate: date];
        dateStr = [dateStr stringByAppendingString:@"\n"];
        NSData *data = [dateStr dataUsingEncoding:NSUTF8StringEncoding];
        [fileHandle writeData:data];
        NSLog(@"write: %@", dateStr);
    }
}

- (NSString *)formatDate:(NSDate *)date
{
    NSString *format = @"yyyy-MM-dd HH:mm:ss";
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] initWithDateFormat: format allowNaturalLanguage:YES];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSString *str = [[formatter stringFromDate: date] autorelease];
    
    [formatter release];
    return str;
}
@end
