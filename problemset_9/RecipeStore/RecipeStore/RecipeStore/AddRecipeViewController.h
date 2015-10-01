//
//  AddRecipeViewController.h
//  RecipeStore
//
//  Created by Elise Harris on 9/30/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Recipe.h"

@interface AddRecipeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageTextField;
@property (weak, nonatomic) IBOutlet UITextField *prepTimeTextField;
- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;
@property (strong) Recipe *selectedRecipe;

@end
