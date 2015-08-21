//
//  BNRPerson.m
//  bodymassindex
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson
//- (float)heightInMeters
//{
  //  return _heightInMeters;
    //}

//- (void)setHeightInMeters:(float)h
//{
 //   _heightInMeters = h;
//}

//- (int)weightInKilos
//{
 //   return _weightInKilos;
//}

// - (void)setWeightInKilos:(int)w
// {
 //   _weightInKilos = w;
//}

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
