//
//  main.m
//  problem3
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *sphere = [[Shape alloc] init];
        
        // Give the instance variables interesting values using setters
        [sphere setWidthInMeters:96];
        [sphere setHeightInMeters:44];
        
        // Log the instance variables using the getters
        float height = [sphere heightInMeters];
        int width = [sphere widthInMeters];
        NSLog(@"sphere is %f meters tall and %d meters wide", height, width);
        
        // Log some values using custom methods
        float sphereArea = [sphere shapeArea];
        NSLog(@"sphere has an area of %f", sphereArea);

    }
    return 0;
}
