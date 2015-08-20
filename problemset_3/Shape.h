//
//  Shape.h
//  shape3
//
//  Created by Elise Harris on 8/16/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) float widthInMeters;

- (float)shapeArea;

@end
