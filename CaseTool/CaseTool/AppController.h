//
//  AppController.h
//  CaseTool
//
//  Created by Hendy on 13-1-7.
//  Copyright (c) 2013年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject {
    IBOutlet NSTextField *textField;
    IBOutlet NSTextField *resultsField;
}

- (IBAction) uppercase: (id)sender;
- (IBAction) lowercase: (id)sender;

@end
