//
//  RecipeViewController.h
//  RecipePhoto
//
//  Created by Elise Harris on 9/18/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
- (IBAction)close:(id)sender;
@property (weak, nonatomic) NSString *recipeImageName;
@end
