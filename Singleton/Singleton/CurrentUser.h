//
//  CurrentUser.h
//  Singleton
//
//  Created by Hendy Ou on 13-8-23.
//  Copyright (c) 2013年 Hendy Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CurrentUser : NSObject <NSCopying>

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *email;

+ (id) shareUser; //一般用share/default表示单例

@end
