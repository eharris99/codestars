//
//  RecipeStoreTableViewController.m
//  RecipeStore
//
//  Created by Elise Harris on 9/30/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "RecipeStoreTableViewController.h"
#import "AppDelegate.h"
#import "Recipe.h"
#import "Recipe+CoreDataProperties.h"
#import "AddRecipeViewController.h"

@interface RecipeStoreTableViewController ()

@end

@implementation RecipeStoreTableViewController

{
    NSFetchedResultsController *fetchResultController;
    NSArray *recipes;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
        
    NSFetchRequest *fetchRequest = [ [NSFetchRequest alloc] initWithEntityName:@"Recipe"];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
    fetchRequest.sortDescriptors=@[sortDescriptor];
    AppDelegate *appDelegate = (AppDelegate *) [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext=[appDelegate managedObjectContext];
    
    if (managedObjectContext != nil) {
        fetchResultController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:managedObjectContext sectionNameKeyPath:nil cacheName:nil];
        fetchResultController.delegate = self;
        
        NSError *error;
        if ([fetchResultController performFetch:&error]) {
            recipes=fetchResultController.fetchedObjects;
        }else{
            NSLog(@"Can't get the record! %@ %@", error, [error localizedDescription]);
        }
    }
    }
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [recipes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Recipe *recipe=( Recipe *)recipes[indexPath.row];
    cell.textLabel.text=recipe.name;
    cell.detailTextLabel.text=[NSString stringWithFormat:@"%@  - %@", recipe.image, recipe.prepTime];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        // Delete the row from the data source
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//    }
    
    AppDelegate *appDelegate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext=[appDelegate managedObjectContext];
    
    if (managedObjectContext != nil) {
        Recipe *recipeToDelete= (Recipe *)[fetchResultController objectAtIndexPath:indexPath];
        [managedObjectContext deleteObject:recipeToDelete];
        
        NSError *error;
        if (![managedObjectContext save:&error]) {
            
            NSLog(@"Can't delete the record! %@ %@", error, [error localizedDescription]);
        }
    }

}

- (void) controllerWillChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView beginUpdates];
}

- (void) controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath {
    
    switch (type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeUpdate:
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        default:
            [self.tableView reloadData];
            break;
    }
    
    recipes = controller.fetchedObjects;
}

- (void) controllerDidChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView endUpdates];
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return YES;
}


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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"UpdateRecipe"]) {
        Recipe *selectedRecipe = [recipes objectAtIndex:[[self.tableView indexPathForSelectedRow] row]];
        UINavigationController *destViewController = segue.destinationViewController;
        AddRecipeViewController *recipeViewController =
        (AddRecipeViewController*)destViewController.topViewController;
        recipeViewController.selectedRecipe = selectedRecipe;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
