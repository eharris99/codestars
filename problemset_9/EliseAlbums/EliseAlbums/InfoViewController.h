//
//  InfoViewController.h
//  EliseAlbums
//
//  Created by Elise Harris on 10/1/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Album.h"

@interface InfoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *albumImageView;
@property (weak, nonatomic) IBOutlet UILabel *albumYear;
@property (weak, nonatomic) IBOutlet UILabel *albumBlurb;
@property (weak, nonatomic) IBOutlet UILabel *albumTitle;
- (IBAction)close:(id)sender;
@property (weak,nonatomic) NSString *albumImageName;
@property (weak,nonatomic) NSString *albumYearName;
@property (weak,nonatomic) NSString *albumBlurbName;
@property (weak,nonatomic) NSString *albumTitleName;
@property (nonatomic, strong) Album *album;

@end
