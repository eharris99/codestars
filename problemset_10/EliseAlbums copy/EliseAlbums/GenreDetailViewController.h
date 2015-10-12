//
//  GenreDetailViewController.h
//  EliseAlbums
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Genre.h"

@interface GenreDetailViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIWebView *webView;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) Genre *genre;

@end
