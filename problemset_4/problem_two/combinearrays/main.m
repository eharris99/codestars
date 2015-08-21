//
//  main.m
//  combinearrays
//
//  Created by Elise Harris on 8/20/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *myArray = @[@1, @2, @3];
        NSArray *myArray2= @[@4, @5, @6];
        NSArray *thirdArray=[myArray arrayByAddingObjectsFromArray:myArray2];
        NSLog(@"the combined array is %@",thirdArray);
        
    }
    return 0;
}
