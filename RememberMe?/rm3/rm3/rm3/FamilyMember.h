//
//  FamilyMember.h
//  rm3
//
//  Created by Elise Harris on 9/22/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FamilyMember : NSObject

@property (nonatomic, strong) NSString *name; // name of family member
@property (nonatomic, strong) NSString *relationship; // relationship to user
@property (nonatomic, strong) NSString *image; // image filename of recipe
@property (nonatomic, strong) NSArray *age;

@end
