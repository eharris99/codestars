//
//  GenresTableViewController.m
//  EliseAlbums
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "GenresTableViewController.h"
#import "GenresTableViewCell.h"
#import "Genre.h"
#import "GenreDetailViewController.h"

@interface GenresTableViewController ()

@end

@implementation GenresTableViewController

{
    
    NSArray *genres;
    NSArray *wikipedialinks;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    genres = @[@"Country", @"Rock", @"R&B", @"Electronic", @"Hip Hop", @"Classical", @"Dancehall", @"Britpop", @"Indie Pop", @"Baroque"];
//    
//    wikipedialinks = @[@"https://en.wikipedia.org/wiki/Country_music", @"https://en.wikipedia.org/wiki/Rock_music", @"https://en.wikipedia.org/wiki/Rhythm_and_blues", @"https://en.wikipedia.org/wiki/Electronic_music", @"https://en.wikipedia.org/wiki/Hip_hop_music", @"https://en.wikipedia.org/wiki/Classical_music", @"https://en.wikipedia.org/wiki/Dancehall", @"https://en.wikipedia.org/wiki/Britpop", @"https://en.wikipedia.org/wiki/Indie_pop", @"https://en.wikipedia.org/wiki/Baroque_music"];

    
    Genre *genre1 = [Genre new];
    genre1.name = @"Country";
    genre1.link = @"https://en.wikipedia.org/wiki/Country_music";
    
    Genre *genre2= [Genre new];
    genre2.name = @"Rock";
    genre2.link = @"https://en.wikipedia.org/wiki/Rock_music";
    
    Genre *genre3 = [Genre new];
    genre3.name = @"R&B";
    genre3.link = @"https://en.wikipedia.org/wiki/Rhythm_and_blues";
    
    Genre *genre4 = [Genre new];
    genre4.name = @"Electronic";
    genre4.link = @"https://en.wikipedia.org/wiki/Electronic_music";
    
    Genre *genre5 = [Genre new];
    genre5.name = @"Hip Hop";
    genre5.link = @"https://en.wikipedia.org/wiki/Hip_hop_music";
    
    Genre *genre6 = [Genre new];
    genre6.name = @"Classical";
    genre6.link = @"https://en.wikipedia.org/wiki/Classical_music";
    
    Genre *genre7 = [Genre new];
    genre7.name = @"Dancehall";
    genre7.link = @"https://en.wikipedia.org/wiki/Dancehall";
    
    Genre *genre8 = [Genre new];
    genre8.name = @"Britpop";
    genre8.link = @"https://en.wikipedia.org/wiki/Britpop";
    
    Genre *genre9 = [Genre new];
    genre9.name = @"Indie Pop";
    genre9.link = @"https://en.wikipedia.org/wiki/Indie_pop";
    
    Genre *genre10 = [Genre new];
    genre10.name = @"Baroque";
    genre10.link = @"https://en.wikipedia.org/wiki/Baroque_music";
    
    genres = [NSArray arrayWithObjects: genre1, genre2, genre3, genre4, genre5, genre6, genre7, genre8, genre9, genre10, nil];
    
    
//    self.genres = [[NSArray alloc] init];
//    [self loadInitialData];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [genres count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
  
    
    static NSString *cellIdentifier = @"Cell2";
    GenresTableViewCell *cell = (GenresTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    // Configure the cell...
    
    Genre *genre;
    genre = [genres objectAtIndex:indexPath.row];
    cell.textLabel.text = genre.name;

    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showGenreDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        GenreDetailViewController *destViewController = segue.destinationViewController;
        Genre *genre;
       genre = [genres objectAtIndex:indexPath.row];
    destViewController.url = genre.link;
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
