//
//  comboforloops.m
//  othermethodqu2
//
//  Created by Elise Harris on 8/21/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "comboforloops.h"

@implementation comboforloops

-(NSArray*)arrayMerge:(NSArray*)arrayOne inputTwo:(NSArray*)arrayTwo{
    
    NSMutableArray *newArrayMerge = [[NSMutableArray alloc]init];
    
    
    for (NSArray* d in arrayOne) {
        [newArrayMerge addObject:d];
    }
    
    for (NSArray* e in arrayTwo) {
        [newArrayMerge addObject:e];
    }
    
    
    
    return newArrayMerge;
    
}


@end
