//
//  IdeaBook.m
//  FunIdeas
//
//  Created by Elise Harris on 8/21/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "IdeaBook.h"

@implementation IdeaBook

- (instancetype)init
{
    self = [super init];
    if (self) {
       _ideas=[[NSArray alloc] initWithObjects:@"film forum", @"met museum", @"coney island", @"central library",@"ping pong game", nil];
    }
    return self;
}

-(NSString *)randomIdea {
    int random = arc4random_uniform((int)self.ideas.count);
    
    return [self.ideas objectAtIndex:random];
}

@end
