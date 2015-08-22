//
//  ViewController.m
//  FunIdeas
//
//  Created by Elise Harris on 8/21/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "ViewController.h"
#import "IdeaBook.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.ideaBook=[[IdeaBook alloc] init];
    
    self.funIdeaLabel.text= [self.ideaBook randomIdea];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)showFunIdea {
    self.funIdeaLabel.text= [self.ideaBook randomIdea];
}

@end
