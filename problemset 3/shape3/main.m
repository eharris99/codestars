//
//  main.m
//  shape3
//
//  Created by Elise Harris on 8/16/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "square.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *sphere = [[Shape alloc] init];
        square *squ = [[square alloc] init];
        Circle *cir = [[Circle alloc] init];
        
        // Give the instance variables interesting values using setters
        [sphere setWidthInMeters:96];
        [sphere setHeightInMeters:44];
        
        [squ setWidthInMeters : 55];
        [squ setHeightInMeters : 55];
        
        [cir setRadius:44];
        
        // Log the instance variables using the getters
        float height = [sphere heightInMeters];
        float width = [sphere widthInMeters];
        float squareSide = [squ heightInMeters];
        float circleradius = [cir radius];
        NSLog(@"sphere is %f meters tall and %f meters wide", height, width);
        NSLog(@"square is %f meters by %f meters", squareSide, squareSide);
        NSLog(@"circle radius is %f meters and circle area is %f meters", circleradius, [cir shapeArea]);
        
        // Log some values using custom methods
        float sphereArea = [sphere shapeArea];
        NSLog(@"sphere has an area of %f", sphereArea);
        NSLog(@"square has an area of %f", [squ squareArea]);
        NSLog(@"circle area is %f", [cir shapeArea]);
        

    }
    return 0;
}
