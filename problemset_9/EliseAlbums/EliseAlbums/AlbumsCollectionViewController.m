//
//  AlbumsCollectionViewController.m
//  EliseAlbums
//
//  Created by Elise Harris on 10/1/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "AlbumsCollectionViewController.h"
#import "AlbumCollectionViewCell.h"
#import "Album.h"
#import "InfoViewController.h"

@interface AlbumsCollectionViewController ()

@end

@implementation AlbumsCollectionViewController

{
    NSArray *albumImages;
    NSArray *albums;
}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    
    Album *album1 = [Album new];
    album1.name = @"Beethoven Piano Sonatas";
    album1.year = @"2015";
    album1.image = @"beethoven piano sonatas";
    album1.title = @"Beethoven Piano Sonatas";
    album1.blurb = @"This makes me relax and focus. Good for background music and for active, focused listening.";
    
    
    Album *album2 = [Album new];
    album2.name = @"Blood on the Tracks";
    album2.year = @"2014";
    album2.image = @"bob dylan boot";
    album2.title = @"Bob Dylan, Blood on the Tracks";
    album2.blurb = @"Ultimate breakup album. Almost painful to listen to it. Bittersweet doesn't begin to cover it.";
    
    Album *album3 = [Album new];
    album3.name = @"brahms requiem";
    album3.year = @"2013";
    album3.image = @"brahms requiem";
    album3.title = @"Brahms Requiem";
    album3.blurb = @"Powerful loving music about loss and love.";
    
    Album *album4 = [Album new];
    album4.name = @"dilla donuts";
    album4.year = @"2012";
    album4.image = @"dilla donuts";
    album4.title = @"J Dilla Donuts";
    album4.blurb = @"One of the best albums ever. So technically inventive yet also emotionally powerful. A tragic loss.";
    
    Album *album5 = [Album new];
    album5.name = @"judy garland at carnegie hall";
    album5.year = @"2011";
    album5.image = @"judy garland";
    album5.title = @"Judy Garland Live at Carnegie Hall";
    album5.blurb = @"Her voice is just unbelievable. And her phrasing and styling are incomparable. I don't know who sings like this.";
    
    Album *album6 = [Album new];
    album6.name = @"moran artist in residence";
    album6.year = @"2010";
    album6.image = @"moran artist in residence";
    album6.title = @"Artist in Residence";
    album6.blurb = @"Moran's music is kind of cerebral but it makes me like jazz.";
    
    Album *album7 = [Album new];
    album7.name = @"Moran Same Mother";
    album7.year = @"2009";
    album7.image = @"moran same mother";
    album7.title = @"Same Mother";
    album7.blurb = @"More brainy, political, and scholarly jazz from MacArthur winner Jason Moran.";
    
    albumImages=@[@"beethoven piano sonatas", @"bob dylan boot", @"brahms requiem",@"dilla donuts", @"judy garland", @"moran artist in residence",@"moran same mother", @"nuyorican soul", @"petsounds", @"petestrumentals"];
    
    Album *album8 = [Album new];
    album8.name = @"nuyorican soul";
    album8.year = @"2008";
    album8.image = @"nuyorican soul";
    album8.title = @"nuyorican soul";
    album8.blurb = @"The most fun dance music. La India is a great singer. 'Runaway' will motivate me anytime.";
    
    Album *album9 = [Album new];
    album9.name = @"petsounds";
    album9.year = @"2007";
    album9.image = @"petsounds";
    album9.title = @"Pet Sounds";
    album9.blurb = @"Maybe my favorite album. You feel really close to Brian Wilson cause the lyrics are so personal. The music feels very emotionally honest.";
    
    Album *album10 = [Album new];
    album10.name = @"petestrumentals";
    album10.year = @"2006";
    album10.image = @"petestrumentals";
    album10.title = @"petestrumentals";
    album10.blurb = @"I listen to these instrumental tracks all day while working. Pete Rock is an amazing producer/ composer. I like his partner CL Smooth too but I tend to just listen to  instrumentals for working";
    
   
    albums = [NSArray arrayWithObjects:album1, album2, album3, album4, album5,album6, album7, album8, album9, album10, nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showInfoDetail"]) {
    
    Album *album1 = [Album new];
    album1.name = @"Beethoven Piano Sonatas";
    album1.year = @"1987";
    album1.image = @"beethoven piano sonatas";
    album1.title = @"Beethoven Piano Sonatas";
    album1.blurb = @"This makes me relax and focus. Good for background music and for active, focused listening.";
    
    
    Album *album2 = [Album new];
    album2.name = @"Blood on the Tracks";
    album2.year = @"1975";
    album2.image = @"bob dylan boot";
    album2.title = @"Bob Dylan, Blood on the Tracks";
    album2.blurb = @"Ultimate breakup album. Almost painful to listen to it. Bittersweet doesn't begin to cover it.";
    
    Album *album3 = [Album new];
    album3.name = @"brahms requiem";
    album3.year = @"1997";
    album3.image = @"brahms requiem";
    album3.title = @"Brahms Requiem";
    album3.blurb = @"Powerful loving music about loss and love.";
    
    Album *album4 = [Album new];
    album4.name = @"dilla donuts";
    album4.year = @"2006";
    album4.image = @"dilla donuts";
    album4.title = @"J. Dilla, Donuts";
    album4.blurb = @"One of the best albums ever. So technically inventive yet also emotionally powerful. A tragic loss.";
    
    Album *album5 = [Album new];
    album5.name = @"judy garland at carnegie hall";
    album5.year = @"1961";
    album5.image = @"judy garland";
    album5.title = @"Judy Garland Live at Carnegie Hall";
    album5.blurb = @"Her voice is just unbelievable. And her phrasing and styling are incomparable. I don't know who sings like this.";
    
    Album *album6 = [Album new];
    album6.name = @"moran artist in residence";
    album6.year = @"2006";
    album6.image = @"moran artist in residence";
    album6.title = @"Jason Moran, Artist in Residence";
    album6.blurb = @"Moran's music is kind of cerebral but it makes me like jazz.";
    
    Album *album7 = [Album new];
    album7.name = @"Moran Same Mother";
    album7.year = @"2004";
    album7.image = @"moran same mother";
    album7.title = @"Jason Moran, Same Mother";
    album7.blurb = @"More brainy, political, and scholarly jazz from MacArthur winner Jason Moran.";
    
    albumImages=@[@"beethoven piano sonatas", @"bob dylan boot", @"brahms requiem",@"dilla donuts", @"judy garland", @"moran artist in residence",@"moran same mother", @"nuyorican soul", @"petsounds", @"petestrumentals"];
    
    Album *album8 = [Album new];
    album8.name = @"nuyorican soul";
    album8.year = @"1997";
    album8.image = @"nuyorican soul";
    album8.title = @"Nuyorican Soul";
    album8.blurb = @"The most fun dance music. La India is a great singer. 'Runaway' will motivate me anytime.";
    
    Album *album9 = [Album new];
    album9.name = @"petsounds";
    album9.year = @"1966";
    album9.image = @"petsounds";
    album9.title = @"The Beach Boys, Pet Sounds";
    album9.blurb = @"Maybe my favorite album. You feel really close to Brian Wilson cause the lyrics are so personal. The music feels very emotionally honest.";
    
    Album *album10 = [Album new];
    album10.name = @"petestrumentals";
    album10.year = @"2001";
    album10.image = @"petestrumentals";
    album10.title = @"Pete Rock, Petestrumentals";
    album10.blurb = @"I listen to these instrumental tracks all day while working. Pete Rock is an amazing producer/ composer. I like his partner CL Smooth too but I tend to just listen to  instrumentals for working";
    
    albums = [NSArray arrayWithObjects:album1, album2, album3, album4, album5, album6, album7, album8, album9, album10, nil];
    // Do any additional setup after loading the view.
    
        
    
   
        NSIndexPath *IndexPaths = [self.collectionView indexPathsForSelectedItems][0];
        Album *album;
        album = [albums objectAtIndex:IndexPaths.row];
        InfoViewController *destViewController = segue.destinationViewController;
        destViewController.albumImageName=album.image;
        destViewController.albumBlurbName=album.blurb;
        destViewController.albumTitleName=album.title;
        destViewController.albumYearName=album.year;
 
        
        
        
//
//        detailViewController.album = album;

           [self.collectionView deselectItemAtIndexPath:IndexPaths animated:NO];
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [albums count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    AlbumCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    Album *album;
    album = [albums objectAtIndex:indexPath.row];
    cell.albumImage.image = [UIImage imageNamed:album.image];
    
    
//[UIImage imageNamed:[albumImages objectAtIndex:indexPath.row]]
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
