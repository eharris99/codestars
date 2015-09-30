//
//  Recipe.h
//  RecipeStore
//
//  Created by Elise Harris on 9/30/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Recipe : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *image;
@property (nullable, nonatomic, retain) NSString *prepTime;

@end

NS_ASSUME_NONNULL_END

#import "Recipe+CoreDataProperties.h"
