//
//  main.m
//  other_way_carlist
//
//  Created by Elise Harris on 8/22/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
                
                NSArray* cars = [NSArray arrayWithObjects:
                                 [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Audi",@"make",
                                  @"2015",@"year",
                                  @"Q3",@"model",
                                  nil],
                                 [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Alfa Romeo",@"make",
                                  @"2015",@"year",
                                  @"4C",@"model",
                                  nil],
                                 [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Aston Martin",@"make",
                                  @"2015",@"year",
                                  @"V8 Vantage GT",@"model", nil],
                                 [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Acura",@"make",
                                  @"2015",@"year",
                                  @"TLX",@"model", nil],
                                 [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Audi",@"make",
                                  @"2015",@"year",
                                  @"A3",@"model",
                                  nil], nil];
                
               
                
                NSArray *values = [cars valueForKeyPath: @"@unionOfArrays.@allValues"];
                
                for (int d=0; d<6; d++) {
                    NSLog(@"This car is %@",[values objectAtIndex:d]);
                }
        
    }
    return 0;
}
