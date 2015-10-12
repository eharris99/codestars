//
//  WebPageViewController.h
//  RssReader
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebPageViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSString *link;

@end
