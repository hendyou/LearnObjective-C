//
//  Thingle.h
//  ObjectEncoding
//
//  Created by Hendy on 13-1-15.
//  Copyright (c) 2013年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Thingie : NSObject <NSCoding>
{
    NSString *name;
    int magicNumber;
    float shoeSize;
    NSMutableArray *subThingies;
}

@property (copy) NSString *name;
@property int magicNum;
@property float shoeSize;
@property (retain) NSMutableArray *subThingies;

- (id) initWithName: (NSString *) name
        magicNumber: (int) magicNumber
           shoeSize: (float) shoeSize;

@end
