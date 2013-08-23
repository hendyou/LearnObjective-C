//
//  main.m
//  NewObject
//
//  Created by Hendy  on 12-10-4.
//  Copyright (c) 2012年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    China,
    Canada,
    Korea,
    America
} Country;

enum Sex {
    male = 1,
    femail = 0
    };

// ------------------------------
// All about Person

@interface Person : NSObject
{
    NSString *name;
    Country country;
    enum Sex sex;
    
}

- (void) setName: (NSString *) name;

- (void) setCountry: (Country) country;

- (void) setSex: (enum Sex) sex;

- (void) showInfo;

@end //Person


@implementation Person

- (void) setName:(NSString *)n
{
    name = n;
}

- (void) setCountry:(Country)c
{
    country = c;
}

- (void) setSex:(enum Sex)s
{
    sex = s;
}

- (void) showInfo
{
    NSLog(@"Name:%@, Country:%@, Sex:%@", name, countryName(country), sexName(sex));
}

NSString *sexName (enum Sex sex) {
    switch (sex) {
        case male:
            return @"male";
            break;
        case femail:
            return @"female";
            break;
        default:
            break;
    }
}

NSString *countryName (Country country)
{
    switch (country) {
        case China:
            return @"China";
            break;
        case Canada:
            return @"Canada";
            break;
        case Korea:
            return @"Korea";
            break;
        case America:
            return @"America";
            break;
        default:
            break;
    }
}

@end //Person


// ------------------------------
// All about Cat

@interface Cat : NSObject
{
    NSString *name;
}

- (void) cry;

@end // Cat


@implementation Cat

- (void) cry
{
    NSLog(@"喵~");
}

@end //Cat


// ------------------------------
// Main function

int main(int argc, const char * argv[])
{
    Person *person = [Person new];
    
    [person setCountry:China];
    [person setName:@"Hendy"];
    [person setSex:male];
    
    [person showInfo];
    
    id ps[4];
    
    ps[0] = [Person new];
    [ps[0] setCountry:China];
    
    ps[1] = [Cat new];
    [ps[1] cry];
    
    return 0;
}

