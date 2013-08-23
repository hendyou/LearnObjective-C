//
//  main.m
//  Shape-Object
//
//  Created by Hendy  on 12-10-18.
//  Copyright (c) 2012年 Hendy . All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kCircle,
    kRectangle,
    kOblateSpheroid
} ShapeColor;

typedef enum {
    kRed,
    kBlue,
    kGreen
} ShapeRect;


// ----------------
// Shape

@interface Shape : NSObject
{
    ShapeColor mFillColor;
    ShapeRect mBounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end //Shape


@implementation Shape

- (void) setFillColor:(ShapeColor)fillColor
{
    mFillColor = fillColor;
}

- (void) setBounds:(ShapeRect)bounds
{
    mBounds = bounds;
}

- (void) draw
{
    
}

@end //Shape


// ------------------------
// Circle

@interface Circle : Shape

@end // Circle


@implementation Circle

- (void) draw
{
    NSLog(@"drawing a Circle");
}

@end

// ------------------------
// Rectangle

@interface Rectangle : Shape

@end // Rectangle


@implementation Rectangle

- (void) draw
{
    NSLog(@"drawing a Rectangle");
}

@end


int main(int argc, const char * argv[])
{

    
    return 0;
}

