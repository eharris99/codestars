//
//  main.m
//  homework1
//
//  Created by Elise Harris on 8/2/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *wordsArray = [NSArray arrayWithObjects:@"computer", @"iphone", @"racecar", @"macbook", @"ipad",nil];
        NSMutableArray *capArray = [wordsArray valueForKeyPath:@"uppercaseString"];
        NSLog(@"Question 1:%@",capArray);
    }
    return 0;
}
