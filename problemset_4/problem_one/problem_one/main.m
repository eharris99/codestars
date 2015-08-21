//
//  main.m
//  problem_one
//
//  Created by Elise Harris on 8/20/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>


NSArray *capStrings (NSArray* myArray);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *myArray = @[@"cat", @"dog", @"frog"];
        
        NSLog(@"The allcaps are %@", capStrings(myArray));
    }
    return 0;
}


NSArray *capStrings(NSArray* myArray) {
    NSMutableArray *capitalArray = [[NSMutableArray alloc] init];
    NSString * capString;
    for(NSString *str in myArray) {
        capString = [str uppercaseString];
        [capitalArray addObject:capString];
    }
    return capitalArray;
}
