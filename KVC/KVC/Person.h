//
//  Person.h
//  KVC
//
//  Created by Hendy Ou on 13-8-23.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @private
    NSString *name;
    NSArray *appleDevices;
}

//@property (nonatomic, copy) NSString *name;
//@property (nonatomic, retain) NSArray *appleDevices;

@end
