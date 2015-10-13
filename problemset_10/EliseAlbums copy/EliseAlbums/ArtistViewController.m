//
//  ArtistViewController.m
//  EliseAlbums
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "ArtistViewController.h"
#import "Artist.h"
#import "ArtistDetailViewController.h"

@interface ArtistViewController ()

@end

@implementation ArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    Artist *artist = [Artist new];
    artist.link=@"https://en.wikipedia.org/wiki/Wolfgang_Amadeus_Mozart";
    artist.name=@"Mozart";
//    artist.image= @"mozart";
    artist.blurb=@"There's just no one like him. His compositions run the emotional gamut from frivolous to sacred. Every emotional nuance is explored, sadness, joy, humor, regret, forgiveness. Just a miracle to be thankful for.";
    
    self.artistName.text = artist.name;
//    self.artistImageView.image= [UIImage imageNamed: artist.image];
    self.artistBlurb.text=artist.blurb;
    
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
