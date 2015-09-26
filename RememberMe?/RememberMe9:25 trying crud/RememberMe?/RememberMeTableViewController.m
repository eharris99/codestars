//
//  RememberMeTableViewController.m
//  RememberMe?
//
//  Created by Elise Harris on 9/18/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "RememberMeTableViewController.h"
#import "PhotosCollectionViewController.h"
#import "Question.h"
#import "AddQuestionViewController.h"

@interface RememberMeTableViewController ()

@property NSMutableArray *questions;

@end

@implementation RememberMeTableViewController
//{
//
//NSArray *searchResults;
//UISearchController *searchController;
//    
//}

- (void)loadInitialData {
    Question *question1 = [[Question alloc] init];
    question1.questionName = @"What is your sign?";
    [self.questions addObject:question1];
    Question *question2 = [[Question alloc] init];
    question2.questionName = @"Who is your hairdresser?";
    [self.questions addObject:question2];
    Question *question3 = [[Question alloc] init];
    question3.questionName = @"How many homes do you own?";
    [self.questions addObject:question3];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    self.questions = [[NSMutableArray alloc] init];
    [self loadInitialData];
    
    
    
    
//    searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
//    [searchController.searchBar sizeToFit];
//    self.tableView.tableHeaderView  = searchController.searchBar;
//    self.definesPresentationContext = YES;
//    searchController.searchResultsUpdater = self;
//    searchController.dimsBackgroundDuringPresentation = NO;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    AddQuestionViewController *source = [segue sourceViewController];
    Question *question = source.question;
    if (question != nil) {
        [self.questions addObject:question];
        [self.tableView reloadData];
    }
    
}

//- (void)filterContentForSearchText:(NSString *)searchText {
//    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"question contains[c]%@", searchText];
//    searchResults = [self.questions filteredArrayUsingPredicate:resultPredicate];
//}
//
//- (void) updateSearchResultsForSearchController:(UISearchController *)searchController {
//    [self filterContentForSearchText:searchController.searchBar.text];
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
        return [self.questions count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    Question *question= [self.questions objectAtIndex:indexPath.row];
    cell.textLabel.text = question.questionName;
//    if (searchController.active) {
//        question = [searchResults objectAtIndex:indexPath.row];
//    } else {
//        question= [self.questions objectAtIndex:indexPath.row];
//        cell.textLabel.text = question.questionName;
//    }
    
    
    
    if (question.completed) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
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

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    Question *tappedItem = [self.questions objectAtIndex:indexPath.row];
    tappedItem.completed = !tappedItem.completed;
    [tableView reloadRowsAtIndexPaths:@[indexPath]
                     withRowAnimation:UITableViewRowAnimationNone];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:
(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.questions removeObjectAtIndex:indexPath.row];
    [tableView reloadData];
}

@end
