//
//  BNRAsset.m
//  bodymassindex
//
//  Created by Elise Harris on 8/21/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
//    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    // Is holder non-nil?
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                 self.label, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
