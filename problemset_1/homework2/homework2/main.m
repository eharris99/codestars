//
//  main.m
//  homework2
//
//  Created by Elise Harris on 8/2/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *numArray = @[@45,@22090909, @5698, @90433, @43431, @3454115,@43002,@109981,@545,@14345435,@1009282,@90909,@13233,@443535,@14782920, @49304, @434];
        
        unsigned long numArrayLength = [numArray count];
        for (NSInteger i=0;i<=numArrayLength-1;i++) {
            
            int num = [numArray[i] intValue];
            if (num % 2 == 0) {
                NSLog(@"Question 2: Evens are %d",num);
            }
            
    }
    return 0;
}
}
