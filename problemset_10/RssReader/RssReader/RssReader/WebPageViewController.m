//
//  WebPageViewController.m
//  RssReader
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "WebPageViewController.h"

@interface WebPageViewController ()

@end

@implementation WebPageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:self.link];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//
//#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

        
        
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

@end
