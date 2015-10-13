//
//  ArtistDetailViewController.m
//  EliseAlbums
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "ArtistDetailViewController.h"

@interface ArtistDetailViewController ()

@end

@implementation ArtistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"https://en.wikipedia.org/wiki/Wolfgang_Amadeus_Mozart"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.mozartWebView loadRequest:request];

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
//}


@end
