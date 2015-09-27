//
//  QuestionDetailViewController.m
//  RememberMe?
//
//  Created by Elise Harris on 9/27/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "QuestionDetailViewController.h"
#import "Question.h"
#import "EditQuestionViewController.h"

@interface QuestionDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;




@end

@implementation QuestionDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.questionLabel.text = self.question.name;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//if ([segue.identifier isEqualToString:@"editQuestion"]) {
//    NSIndexPath *indexPath = [self.label indexPathForSelectedRow];
//        EditQuestionViewController *destViewController = segue.destinationViewController;
//        Question *question;
//        question = [questions objectAtIndex:indexPath.row];
//        destViewController.question = question;
//
//
//}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
if (sender != self.saveButton) return;
if (self.textField.text.length > 0) {
//    self.question = [[Question alloc] init];
    self.question.name = self.textField.text;
    self.question.completed = NO;
}
}

@end

