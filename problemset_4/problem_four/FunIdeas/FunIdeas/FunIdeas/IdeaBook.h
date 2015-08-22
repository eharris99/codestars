//
//  IdeaBook.h
//  FunIdeas
//
//  Created by Elise Harris on 8/21/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IdeaBook : NSObject

@property (strong, nonatomic) NSArray *ideas;

-(NSString *)randomIdea;

@end
