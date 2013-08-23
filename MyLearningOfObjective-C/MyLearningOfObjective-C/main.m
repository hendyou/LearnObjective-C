//
//  main.m
//  MyLearningOfObjective-C
//
//  Created by Hendy  on 12-10-1.
//  Copyright (c) 2012年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        char *path = "/Users/hendy/My Development/workspace_ios/Learn Objective-C/MyLearningOfObjective-C/words.txt";
        FILE *wordFile = fopen(path, "r");
        char word[100];
        
        while (fgets(word, 100, wordFile)) {
            word[strlen(word) -1 ] ='\0';
            NSLog(@"%s is %zd characters long", word, strlen(word));
            
        }
        
        fclose(wordFile);
    }
    return 0;
}

