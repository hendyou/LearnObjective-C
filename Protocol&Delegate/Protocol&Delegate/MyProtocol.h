//
//  MyProtocol.h
//  Protocol&Delegate
//
//  Created by Hendy Ou on 13-8-21.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyProtocol <NSObject> //<NSObject>父类,可以不要
//默认不加修饰的方法为@required方法
- (void) defaultMethod;

@required
- (void) requiredMethod;

@optional
- (void) optionalMethod1;
- (void) optionalMethod2;

@end
