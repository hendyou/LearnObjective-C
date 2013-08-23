//
//  main.m
//  ObjectEncoding
//
//  Created by Hendy on 13-1-15.
//  Copyright (c) 2013年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Thingie.h"

#define kObj @"kObj"
#define kDouble @"kDouble"

int main(int argc, const char * argv[])
{
    //归档的方法:
    /*
     1.NSKeyedArchiver
     2.NSData
     3.NSCoding(自定义对象归档)
     4.集合类型(NSArray,NSDictionary等)
     */

    @autoreleasepool {
        
        //NSKeyedArchiver
        /*
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/test.arc"];
        Thingie *thing1 = [[Thingie alloc] initWithName: @"thing1" magicNumber: 42 shoeSize: 10.54];
        if ([NSKeyedArchiver archiveRootObject:thing1 toFile:path]) {
            NSLog(@"archive successfully");
        }
        [thing1 release];
        
        thing1 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        NSLog(@"%@", thing1);
         */
        
        
        //NSData
        /*
        //write
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/test.data"];
        Thingie *thing1 = [[Thingie alloc] initWithName: @"thing1" magicNumber: 42 shoeSize: 10.54];
        //创建可变NSData
        NSMutableData *data = [NSMutableData data];
        NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
        [archiver encodeDouble:3.14 forKey:kDouble];
        [archiver encodeObject:thing1 forKey:kObj];
        [archiver finishEncoding];
        if ([data writeToFile:path atomically:YES]){
            NSLog(@"write done");
        }
        [archiver release];
        [thing1 release];
        //read
        NSData *data2 = [NSData dataWithContentsOfFile:path];
        NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data2];
        double d = [unarchiver decodeDoubleForKey:kDouble];
        Thingie *thing2 = [unarchiver decodeObjectForKey:kObj];
        [unarchiver finishDecoding];
        [unarchiver release];
        NSLog(@"double: %.2f", d);
        NSLog(@"obj: %@", thing2);
        */
        
        
        //NSCoding
        /*
         NSString *path = @"/Users/hendy/Desktop/test.txt";
         
         Thingie *thing1 = [[Thingie alloc] initWithName: @"thing1" magicNumber: 42 shoeSize: 10.54];
         
         Thingie *subThing = [[[Thingie alloc] initWithName: @"subThing1" magicNumber: 23 shoeSize: 13.02] autorelease];
         
         [thing1.subThingies addObject: subThing];
         
         subThing = [[[Thingie alloc] initWithName: @"subThine2" magicNumber: 54 shoeSize: 345.343] autorelease];
         
         [thing1.subThingies addObject: subThing];
         
         NSLog(@"%@", thing1);
         //对象归档(序列化)
         NSData *freezeDried;
         freezeDried = [NSKeyedArchiver archivedDataWithRootObject: thing1];
         [freezeDried writeToFile: path atomically: YES];
         
         //对象解归档(反序列化)
         NSData *phrase = [NSData dataWithContentsOfFile: path];
         
         Thingie *thing2 = [NSKeyedUnarchiver unarchiveObjectWithData: phrase];
         NSLog(@"---%@", thing2);
         
         Thingie *thing3 = [NSKeyedUnarchiver unarchiveObjectWithFile: path];
         NSLog(@"******%@", thing3);
         */
        
        
        //Array里放Coding对象
        /*
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/testCodingArray.arc"];
        Thingie *thing1 = [[Thingie alloc] initWithName: @"thing1" magicNumber: 42 shoeSize: 10.54];
        Thingie *thing2 = [[Thingie alloc] initWithName: @"thing2" magicNumber: 39 shoeSize: 98.2];
        NSArray *array = @[thing1, thing2];
        if ([NSKeyedArchiver archiveRootObject:array toFile:path]) {
            NSLog(@"archive successfully");
        }
        [thing1 release];
        
        NSArray *array2 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        NSLog(@"%@", array2);
         */
    }
    return 0;
}

