//
//  InfoViewController.m
//  EliseAlbums
//
//  Created by Elise Harris on 10/1/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "InfoViewController.h"
#import "AlbumsCollectionViewController.h"
#import "Album.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = self.albumTitleName;
    self.albumImageView.image = [UIImage imageNamed:self.albumImageName];
    self.albumYear.text = self.albumYearName;
    self.albumBlurb.text = self.albumBlurbName;
    self.albumTitle.text = self.albumTitleName;
    
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

- (IBAction)close:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:^{}];
    
//    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
