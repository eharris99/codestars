//
//  Shape.h
//  problem3
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

{
    float _heightInMeters;
    int _widthInMeters;
    
}

// Shape has methods to read and set its instance variables
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)widthInMeters;
- (void)setWidthInMeters:(int)w;

// Shape has a method that calculates the area
- (float)shapeArea;



@end
