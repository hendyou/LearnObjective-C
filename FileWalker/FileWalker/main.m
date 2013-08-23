//
//  main.m
//  FileWalker
//
//  Created by Hendy on 12-11-20.
//  Copyright (c) 2012年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *home = [@"~/SkyDrive/图片" stringByExpandingTildeInPath];
        
        NSLog(@"%@", home);
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        NSMutableArray *files = [NSMutableArray new];
        
//        NSDirectoryEnumerator *dirEnum = [fileManager enumeratorAtPath: home];
//        
//        NSString *fileName;
//        while (fileName = [dirEnum nextObject]) {
//            if ([@"jpg" isEqualTo: [fileName pathExtension]]) {
//                [files addObject:fileName];
//            }
//        }
        
        for (NSString *fileName in [fileManager enumeratorAtPath: home]) {
//            if ([@"jpg" isEqualTo: [fileName pathExtension]]) {
//                [files addObject: fileName];
//            } 

            if ([@"jpg" compare: [fileName pathExtension] options:NSCaseInsensitiveSearch] == NSOrderedSame) {
                [files addObject: fileName];
            }
        }
        
//        NSEnumerator *fileEnum = [files objectEnumerator];
//        
//        while (fileName = [fileEnum nextObject]) {
//            NSLog(@"%@", fileName);
//        }
        
        for (NSString *fileName in [files objectEnumerator]) {
            NSLog(@"%@", fileName);
        }


    }
    return 0;
}

