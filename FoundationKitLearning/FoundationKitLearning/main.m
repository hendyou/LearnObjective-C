//
//  main.m
//  FoundationKitLearning
//
//  Created by Hendy on 12-11-9.
//  Copyright (c) 2012年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

#import "Slant6.h"

static NSString *TAG = @"main";

#pragma mark - 8.1 一些有用的数据类型

#pragma mark - **struct结构体
void rangeTest(void)
{
    // MARK:方法一
    NSRange range1;
    range1.location = 17;
    range1.length = 4;
    
    // MARK:方法二
    NSRange range2 = {17, 4};
    
    // MARK:方法三
    NSRange range3 = NSMakeRange(17, 4);
}

#pragma mark - **几何数据类型
void geometryType(void)
{
    //NSPoint 点(x,y)
    NSPoint point;
    point.x = 17;
    NSPoint point1 = {12,14};
    point = NSMakePoint(15, 16);
    
    //NSSize 长宽(w,h)
    //NSRect 包含了NSPoint和NSSize
}


#pragma mark - **字符串
void stringTest(void)
{
    NSString *str = @"Hi!!";
    
    //        + (id) stringWithFormat: (NSString *) format, ...;
    //        "+" 表示类方法(静态方法,java中的static方法)
    //        "-" 表示实例方法(对象方法)
    NSColor *haveTheBlues = [NSColor blueColor];
    
    str = [NSString stringWithFormat:@"I am Hendy, I am %d years old...", 26];
    NSLog(@"%@", str);
    
    //        长度
    str = @"我是名字叫Hendy!";
    NSLog(@"\"我是名字叫Hendy!\"的长度是:%ld", [str length]);
#pragma mark 比较字符串
    NSString *girl1 = @"Girl";
    NSString *girl2 = @"girl";
    bool isEqual = [[girl1 lowercaseString] isEqualToString:[girl2 lowercaseString]];
    NSLog(@"Girl=girl? Answer:%@", isEqual?@"YES":@"NO");
    
    long res = [girl1 compare:girl2];
    NSLog(@"%ld", res);
    
#pragma mark 不区分大小写比较
    //        long isSame = [girl1 compare:girl2 options:NSCaseInsensitiveSearch];
    //        long isSame = [girl1 compare:girl2 options:NSLiteralSearch];
    long isSame = [girl1 compare:girl2 options:NSNumericSearch | NSCaseInsensitiveSearch];
    //        NSLog(@"%ld", isSame);
    if (isSame == 0) {
        NSLog(@"\"Girl\" and \"girl\" is the same!");
    } else {
        NSLog(@"\"Girl\" and \"girl\" is !not! the same!");
    }
    
#pragma mark 字符串内是否含有别的字符串
    NSString *fileName = @"draft-chapter.pages";
    
    if ([fileName hasPrefix: @"draft"]) {
        NSLog(@"\"draft-chapter.pages\" start with \"draft\"");
    }
    
    if ([fileName hasSuffix: @".pages"]) {
        NSLog(@"\"draft-chapter.pages\" end with \".mov\"");
    }
    
    NSString *strRange = @"ra";
    NSRange range = [fileName rangeOfString: strRange];
    NSLog(@"\"%@\"'s index in \"%@\" is %i, length is %i", strRange, fileName, range.location, range.length);
    
    
#pragma mark NSMutableString(与Java中的StringBuffer相似)
    //        NSMutableString *mutableStr = [NSMutableString stringWithCapacity: 42];
    //        NSMutableString *mutableStr = [NSMutableString new];
    NSMutableString *mutableStr = [NSMutableString stringWithFormat: @"haha "];
    
    [mutableStr appendString: @"Hello!! "];
    [mutableStr appendFormat: @"%@!! Can I help you to oral sex?!", @"Hendy"];
    NSLog(@"%@", mutableStr);
    
    NSRange range4 = [mutableStr rangeOfString: @"!" options: NSBackwardsSearch];
    [mutableStr deleteCharactersInRange: range4];
    NSLog(@"%@", mutableStr);
    
#pragma mark 文件名
    NSString *filePath = @"abc.mp3";
//    NSString *filePath = @"~/Hendy/abc.mp3";
    NSLog(@"%@", [filePath pathComponents]);
    NSLog(@"%@", [filePath lastPathComponent]);
    NSLog(@"%@", [filePath pathExtension]);
    NSArray *components = [[filePath lastPathComponent] componentsSeparatedByString:@"."];
    for (NSString *component in  components) {
        NSLog(@"%@", component);
    }
}

#pragma mark - **数组
void arrayTest()
{
    NSString *str = @"I Love You ??";
//    NSMutableArray *array = (NSMutableArray *)[str componentsSeparatedByString: @" "];
    NSArray *array = [str componentsSeparatedByString: @" "];    
    for (int i = 0; i < [array count]; i++) {
        NSLog(@"%@", [array objectAtIndex:i]);
    }
    
    NSMutableArray *mutArray = [NSMutableArray arrayWithArray: array];
    //    array = [NSMutableArray arrayWithCapacity: 5];
//    [mutArray removeObjectAtIndex: [mutArray count] -1];
    [mutArray removeLastObject];
    [mutArray addObject: @"!!"];
    for (int i = 0; i < [mutArray count]; i++) {
        NSLog(@"%@", [mutArray objectAtIndex:i]);
    }
}

#pragma mark - **Class 类型
void classTest()
{
    NSMutableArray *mutArray = [NSMutableArray new];
    //isMemberOfClass 判断是否属于此类型
    if ([mutArray isMemberOfClass: [NSArray class]]) {
        NSLog(@"mutArray is a member of NSArray ");
    } else {
        NSLog(@"mutArray is not a member of NSArray ");
    }
    //isKindOfClass 判断是否属于此类型或此类型的父类
    if ([mutArray isKindOfClass: [NSArray class]]) {
        NSLog(@"mutArra is kind of NSArray");
    } else {
        NSLog(@"mutArra is not kind of NSArray");
    }
    
    //isSubclassOfClass 判断是否属于此类型或此类型的父类
    if ([NSMutableArray isSubclassOfClass: [NSArray class]]) {
        NSLog(@"mutArra is subClass of NSArray");
    } else {
        NSLog(@"mutArra is not subClass of NSArray");
    }
    
    Engine *engine = [[Engine alloc] init];
    Slant6 *slant6 = [[Slant6 alloc] init];
//    NSMutableArray *mutArray2 = [NSMutableArray array];
    NSLog(@"%@, %@", [engine class], [slant6 class]);
    if ([engine class] == [slant6 class]) {
        NSLog(@"class is the same");
    }
}

#pragma mark - **枚举迭代器
void enumeratorTest()
{
    NSString *str = @"I Love You !!";
    NSArray *array = [str componentsSeparatedByString: @" "];
    
    NSEnumerator *enumerator = [array reverseObjectEnumerator];
//    NSEnumerator *enumerator = [array objectEnumerator];
    
    id obj;
    while (obj = [enumerator nextObject]) {
        NSLog(@"%@", obj);
    }
    
#pragma mark 快速枚举(java:for-each)
    for (NSString *str in array) {
        NSLog(@"%@", str);
    }
}

#pragma mark - **多态&异常处理
void polymorphic()
{
    NSString *str = @"hello";
    
    SEL s = @selector(abc);
    @try {
        id className = [str performSelector:s];
        NSLog(@"NSString performSelector \"class\" : %@", className);
    }
    @catch (NSException *exception) {
        NSLog(@"%@ %@ %@", TAG, [exception name], [exception reason]);
    }
    @finally {
        //do nothing...
    }
}

#pragma mark -
int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        rangeTest();
//        
//        geometryType();
//   
//        stringTest();
        
//        arrayTest();
        
        classTest();
        
//        enumeratorTest();
        
//        polymorphic();
        
    }
    return 0;
}


