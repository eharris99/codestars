//
//  Question.h
//  RememberMe?
//
//  Created by Elise Harris on 9/19/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *questionName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
