//
//  Circle.m
//  shape3
//
//  Created by Elise Harris on 8/16/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (float) shapeArea
{
    float r = [self radius];
    
    return 3.14159 * (r * r);
}



@end
