//
//  main.m
//  othermethodqu2
//
//  Created by Elise Harris on 8/21/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "comboforloops.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *onetofive = @[@"1", @"2", @"3", @"4", @"5"];
        NSArray *sixtoten = @[@"6", @"7", @"8", @"9", @"10"];
        
        comboforloops *newMerge = [[comboforloops alloc]init];
        
        NSArray *numbers = [newMerge arrayMerge:onetofive inputTwo:sixtoten];
        
        
    NSLog(@"the answer to 2 is %@",numbers);
        

    }
    return 0;
}
