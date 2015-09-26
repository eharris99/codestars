//
//  AddQuestionViewController.m
//  RememberMe?
//
//  Created by Elise Harris on 9/25/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "AddQuestionViewController.h"


@interface AddQuestionViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddQuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if (sender != self.saveButton) return;
    if (self.textField.text.length > 0) {
        self.question = [[Question alloc] init];
        self.question.questionName = self.textField.text;
        self.question.completed = NO;
    }
}


@end
