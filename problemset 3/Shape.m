//
//  Shape.m
//  shape3
//
//  Created by Elise Harris on 8/16/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (float)shapeArea
{
    float h = [self heightInMeters];
    float w = [self widthInMeters];
    return h * w;
}

@end
