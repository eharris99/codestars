//
//  CustomTableViewController.m
//  bowiepersonae
//
//  Created by Elise Harris on 8/28/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

{
    NSMutableArray *bowiePersonae;
    NSArray *bowieImages;
    BOOL personaChecked[8];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bowiePersonae = [NSMutableArray arrayWithObjects:@"Aladdin Sane", @"Thin White Duke 1", @"Thin White Duke 2", @"Drag", @"Hippie", @"Mod", @"Modern Love Showman", @"Ziggy Stardust",nil];
    bowieImages = @[@"Aladdin_Sane", @"Thin_White_Duke_1", @"Thin_White_Duke_2", @"Drag", @"Hippie", @"Mod", @"Modern_Love_Showman", @"Ziggy_Stardust"];
    
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
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    return [bowiePersonae count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath

{
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView
    dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.personaName.text = [bowiePersonae objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[bowieImages objectAtIndex:indexPath.row]];
    if (personaChecked[indexPath.row]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:
(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [bowiePersonae removeObjectAtIndex:indexPath.row];
    [tableView reloadData];
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* selectedRecipe = [bowiePersonae objectAtIndex:indexPath.row];
    UIAlertView *messageAlert = [[UIAlertView alloc]
    initWithTitle:@"Row Selected" message:selectedRecipe
    delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    personaChecked[indexPath.row] = YES;
    
    [messageAlert show];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
}

@end
