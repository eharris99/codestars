//
//  DetailViewController.m
//  RemKoolhaasTravelApp
//
//  Created by Elise Harris on 9/4/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buildingLabel.text = self.buildingName;
    self.buildingPic.image= [UIImage imageNamed:self.buildingImage];
    self.buildingDetailSpace.text=self.buildingDetailDescription;
    
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
