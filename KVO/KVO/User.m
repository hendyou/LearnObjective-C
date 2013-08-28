//
//  User.m
//  KVO
//
//  Created by Hendy on 13-8-24.
//  Copyright (c) 2013年 Hendy. All rights reserved.
//

#import "User.h"
#import "CopyBigFile.h"

#define TARGER_SIZE @"targetSize"

@implementation User

- (void) copyFile
{
    CopyBigFile *copyBigFile = [[CopyBigFile alloc] init];
    
    [copyBigFile addObserver:self forKeyPath:TARGER_SIZE options:NSKeyValueObservingOptionNew context:nil];
    
    [copyBigFile run];
    
    [copyBigFile removeObserver:self forKeyPath:TARGER_SIZE];
    
    [copyBigFile release];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    static NSString *previousPercent;
    if ([TARGER_SIZE isEqualToString:keyPath]) {
        @autoreleasepool {
            CopyBigFile *copyBigFile = object;
            unsigned long long totalSize = [copyBigFile.totalSize unsignedLongLongValue];
            NSNumber *number = [change valueForKey:NSKeyValueChangeNewKey];
            unsigned long long currentSize = [number unsignedLongLongValue];
            double percent = currentSize * 1.0 / totalSize * 100;
            NSString *currentPercent = [NSString stringWithFormat:@"%.0f%%", percent];
            if (![currentPercent isEqualToString:previousPercent]) {
                [previousPercent release];
                previousPercent = [currentPercent copy];
                NSLog(@"%@", previousPercent);
            }
        }
    }
}

- (void)dealloc
{
    [super dealloc];
}

@end
