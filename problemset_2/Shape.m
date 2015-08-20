//
//  Shape.m
//  problem3
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (float)heightInMeters
{
    return _heightInMeters;
}

- (void)setHeightInMeters:(float)h
{
    _heightInMeters = h;
}

- (int)widthInMeters
{
    return _widthInMeters;
}

- (void)setWidthInMeters:(int)w
{
    _widthInMeters = w;
}

- (float)shapeArea
{
    float h = [self heightInMeters];
    float w = [self widthInMeters];
    return h * w;
}


@end
