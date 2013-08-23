//
//  WriteDateToFile.h
//  FileHandleDemo
//
//  Created by Hendy Ou on 13-8-22.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WriteDateToFile : NSObject
{
    NSFileHandle *fileHandle;
}

//@property (nonatomic, retain) NSFileHandle *fileHandle;

- (void) run;
- (void) writeDateToFile: (NSFileHandle *) fileHandle;
- (NSString *) formatDate: (NSDate *) date;
@end
