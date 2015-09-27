//
//  SKDetailViewController.m
//  RememberMe?
//
//  Created by Elise Harris on 9/27/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "SKDetailViewController.h"
#import "SearchKardashiansTableViewCell.h"

@interface SKDetailViewController ()

@end

@implementation SKDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.kardashian.name;
    self.kbirthdayLabel.text = self.kardashian.birthday;
    self.fmImageView.image = [UIImage imageNamed:self.kardashian.image];
    self.relationshipLabel.text=self.kardashian.relationship;
//    NSMutableString *birthdayText = [NSMutableString string];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
