//
//  Thingle.m
//  ObjectEncoding
//
//  Created by Hendy on 13-1-15.
//  Copyright (c) 2013年 Hendy . All rights reserved.
//

#import "Thingie.h"

@implementation Thingie

#define kNameKey @"name"
#define kMagicNumKey @"magicNumber"
#define kShoeSizeKey @"shoeSize"
#define kSubthingiesKey @"subthingies"

@synthesize name;
@synthesize magicNum = magicNumber;
@synthesize shoeSize;
@synthesize subThingies;

- (id)initWithName:(NSString *) n
       magicNumber:(int) mn
          shoeSize:(float) sz
{
    if (self = [super init]) {
        self.name =  n;
        self.magicNum =  mn;
        self.shoeSize =  sz;
        self.subThingies = [NSMutableArray array];
    }
    
    return self;
}

- (void)dealloc
{
    [name release];
    [subThingies release];
    
    [super dealloc];
}

- (void)encodeWithCoder:(NSCoder *) coder
{
    [coder encodeObject: name forKey: kNameKey];
    [coder encodeInt: magicNumber forKey: kMagicNumKey];
    [coder encodeFloat: shoeSize forKey: kShoeSizeKey];
    [coder encodeObject: subThingies forKey: kSubthingiesKey];
}

- (id)initWithCoder:(NSCoder *) decoder
{
    if (self = [super init]) {
        self.name = [decoder decodeObjectForKey: kNameKey];
        self.magicNum = [decoder decodeIntForKey: kMagicNumKey];
        self.shoeSize = [decoder decodeFloatForKey: kShoeSizeKey];
        self.subThingies = [decoder decodeObjectForKey: kSubthingiesKey];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat: @"%@: %d/%.1f %@", name, magicNumber, shoeSize, subThingies];
}

@end
