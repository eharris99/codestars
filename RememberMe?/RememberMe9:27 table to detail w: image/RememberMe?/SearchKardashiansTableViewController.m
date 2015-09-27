//
//  SearchKardashiansTableViewController.m
//  RememberMe?
//
//  Created by Elise Harris on 9/27/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "SearchKardashiansTableViewController.h"
#import "SearchKardashiansTableViewCell.h"
#import "SKDetailViewController.h"
#import "Kardashian.h"

@interface SearchKardashiansTableViewController ()
//@property (nonatomic,strong) NSArray        *kardashianNames;
@end

@implementation SearchKardashiansTableViewController

{
    
    NSArray *kardashians;
    NSArray *searchResults;
    UISearchController *searchController;
}

- (void)filterContentForSearchText:(NSString *)searchText {
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c]%@", searchText];
    searchResults = [kardashians filteredArrayUsingPredicate:resultPredicate];
                                    }

- (void) updateSearchResultsForSearchController:(UISearchController *)searchController {
    [self filterContentForSearchText:searchController.searchBar.text];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    [searchController.searchBar sizeToFit];
    self.tableView.tableHeaderView  = searchController.searchBar;
    self.definesPresentationContext = YES;
    searchController.searchResultsUpdater = self;
    searchController.dimsBackgroundDuringPresentation = NO;
    
    Kardashian *kardashian1 = [Kardashian new];
    kardashian1.name = @"Damon";
    kardashian1.birthday = @"January 1";
    kardashian1.image = @"damon.jpg";
    kardashian1.relationship = @"Ex-son-in-Law";
    
    
    Kardashian *kardashian2 = [Kardashian new];
    kardashian2.name = @"Kim";
    kardashian2.birthday = @"February 1";
    kardashian2.image = @"images.jpg";
    kardashian2.relationship = @"Step-Daughter";
    
    Kardashian *kardashian3 = [Kardashian new];
    kardashian3.name = @"Kendall";
    kardashian3.birthday = @"March 1";
    kardashian3.image = @"Kendall+Jenner+Celebrity+Social+Media+Pics+P1dOf43hRoSl.jpg";
    kardashian3.relationship = @"Daughter";
    
    Kardashian *kardashian4 = [Kardashian new];
    kardashian4.name = @"Khloe";
    kardashian4.birthday = @"April 1";
    kardashian4.image = @"khloe-kardashian.jpg";
    kardashian4.relationship = @"Step-Daughter";
    
    Kardashian *kardashian5 = [Kardashian new];
    kardashian5.name = @"Cris";
    kardashian5.birthday = @"May 1";
    kardashian5.image = @"Screen-Shot-2013-01-28-at-7.49.13-PM.png";
    kardashian5.relationship = @"Ex-wife";
    
    Kardashian *kardashian6 = [Kardashian new];
    kardashian6.name = @"Kourtney";
    kardashian6.birthday = @"June 1";
    kardashian6.image = @"img-thing.jpg";
    kardashian6.relationship = @"Step-Daughter";
    
    Kardashian *kardashian7 = [Kardashian new];
    kardashian7.name = @"Scott";
    kardashian7.birthday = @"July 1";
    kardashian7.image = @"scott-disick-300.jpg";
    kardashian7.relationship = @"Son-in-Law";
    
    Kardashian *kardashian8 = [Kardashian new];
    kardashian8.name = @"Kanye";
    kardashian8.birthday = @"August 1";
    kardashian8.image = @"kanyewest_a.jpg";
    kardashian8.relationship = @"Son-in-Law";
    
    Kardashian *kardashian9 = [Kardashian new];
    kardashian9.name = @"North West";
    kardashian9.birthday = @"September 1";
    kardashian9.image = @"northwest.jpg";
    kardashian9.relationship = @"Step-grandchild";
    
    Kardashian *kardashian10 = [Kardashian new];
    kardashian10.name = @"Naya";
    kardashian10.birthday = @"October 1";
    kardashian10.image = @"w630_naya-headshot2";
    kardashian10.relationship = @"Grandchild";
    
    Kardashian *kardashian11 = [Kardashian new];
    kardashian11.name = @"Kylie";
    kardashian11.birthday = @"November 1";
    kardashian11.image = @"Kylie-Jenner-Hair.jpg";
    kardashian11.relationship = @"Daughter";
    
    Kardashian *kardashian12 = [Kardashian new];
    kardashian12.name = @"Kris";
    kardashian12.birthday = @"December 1";
    kardashian12.image = @"kris-humphries.jpg";
    kardashian12.relationship = @"Ex-Son-in-Law";
    
    
kardashians = [NSArray arrayWithObjects: kardashian1, kardashian2, kardashian3, kardashian4, kardashian5, kardashian6, kardashian7, kardashian8, kardashian9, kardashian10, kardashian11, kardashian12, nil];
}


//kardashianNames = @[@"Damon",@"Kim",@"Kris",@"Kanye", @"Khloe",@"Kendall",@"Cris",@"Naya",@"North West", @"Scott",@"Kylie",@"Kourtney"];

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (searchController.active) {
        return searchResults.count;
    } else {
        return [kardashians count];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell3";
    SearchKardashiansTableViewCell *cell = (SearchKardashiansTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
//    forIndexPath:indexPath
    // Configure the cell...
    Kardashian *kardashian;
    if (searchController.active) {
        kardashian = [searchResults objectAtIndex:indexPath.row];
    } else {
        kardashian = [kardashians objectAtIndex:indexPath.row];
    }
    cell.nameLabel.text = kardashian.name;
//    cell.thumbnailImageView.image = [UIImage imageNamed:kardashian.image];
//    cell.prepTimeLabel.text = recipe.prepTime;    }
//    cell.nameLabel.text = [kardashianNames objectAtIndex:indexPath.row];
    
    return cell;
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showBirthdayDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SKDetailViewController *destViewController = segue.destinationViewController;
        Kardashian *kardashian;
        if (searchController.active) {
            kardashian = [searchResults objectAtIndex:indexPath.row];
        } else {
            kardashian = [kardashians objectAtIndex:indexPath.row];
        }
        destViewController.kardashian = kardashian;
    }
}

@end
