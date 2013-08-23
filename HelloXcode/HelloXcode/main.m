//
//  main.m
//  HelloXcode
//
//  Created by Hendy on 12-11-5.
//  Copyright (c) 2012年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //--------1.加入标记--------
        // MARK:便于添加可读的标记,供其他程序员查看和使用
        // TODO:~~~~~~
        // !!!:======
        // ???:++++++
#pragma mark - (在菜单中插入分割线)
#pragma mark 哈哈 (将"哈哈"放入菜单,和MARK:的功能相同)
        
        NSLog(@"Hefllo, Xcode!");
        
    }
    return 0;
}

