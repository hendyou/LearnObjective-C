//
//  AppController.m
//  CaseTool
//
//  Created by Hendy on 13-1-7.
//  Copyright (c) 2013年 Hendy . All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (id)init
{
    if (self = [super init]) {
        NSLog(@"init: text %@ / results %@", textField, resultsField);
    }
    
    return self;
}

- (void)awakeFromNib
{
    NSLog(@"init: text %@ / results %@", textField, resultsField);
    
//    [textField setStringValue: @"Enter text here"];
    [resultsField setStringValue: @"Results"];
}

- (void)uppercase:(id)sender
{
    NSString *original = [textField stringValue];
    
    NSString *uppercase = [original uppercaseString];
    
    [resultsField setStringValue: uppercase];
}

- (void)lowercase:(id)sender
{
    NSString *original = [textField stringValue];
    
    NSString *lowercase = [original lowercaseString];
    
    [resultsField setStringValue: lowercase];
}

@end
