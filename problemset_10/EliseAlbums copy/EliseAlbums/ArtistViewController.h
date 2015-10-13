//
//  ArtistViewController.h
//  EliseAlbums
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArtistViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *artistImageView;
@property (weak, nonatomic) IBOutlet UILabel *artistName;
@property (weak, nonatomic) IBOutlet UITextView *artistBlurb;

@property (weak,nonatomic) NSString *artistImageName;
@property (weak,nonatomic) NSString *artistNameName;
@property (weak,nonatomic) NSString *artistBlurbName;

- (IBAction)showWikipediaPage:(id)sender;

@end
