//
//  main.m
//  allcaps
//
//  Created by Elise Harris on 8/20/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {

//        NSArray *myArray = @[@"cat", @"dog", @"frog"];
//        
//        // instance of class
//        NSString *capTime = [[NSString alloc]init];
//        NSArray *capped =  [capTime arrayCapper:arrayLowerINput];
//        
//        
//        
//        for (int x = 0; x < [capped count]; x++) {
//            NSString *e = capped[x];
//            NSLog(@"Question 1 answer %@", e);
//        }
//        return 0;
//    }
    
        

//                NSArray *myArray = @[@"cat", @"dog", @"frog"];
//                NSMutableArray *capArray = [myArray valueForKeyPath:@"uppercaseString"];
//                NSLog(@"Question 1:%@",capArray);
//            }
//            return 0;
//        }

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *myArray = @[@"cat", @"dog", @"frog"];
        NSMutableArray *capitalArray = [[NSMutableArray alloc] init];
//        NSString *cappedstring = [capped uppercaseString];
        
        for (int x = 0; x < [myArray count]; x++) {
//            NSArray *new = [myArray uppercaseString];
            
            NSString *allcaps = [myArray[x] uppercaseString];
            [capitalArray addObject:allcaps];
            NSString *hi = capitalArray[x];
            NSLog(@"Question 1 answer %@", hi);
        }
        return 0;
    }
}
