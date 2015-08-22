//
//  ViewController.h
//  FunIdeas
//
//  Created by Elise Harris on 8/21/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>
@class IdeaBook;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *funIdeaLabel;
@property (strong, nonatomic) IdeaBook* ideaBook;

-(IBAction)showFunIdea;


@end

