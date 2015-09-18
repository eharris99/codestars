//
//  DetailViewController.h
//  CustomTable
//
//  Created by Elise Harris on 9/4/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface DetailViewController : UIViewController



@property (nonatomic, strong) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UITextView *ingredientsTextView;
@property (nonatomic, strong) Recipe *recipe;

@end
