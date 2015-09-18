//
//  CustomTableViewController.m
//  CustomTable
//
//  Created by Simon Ng on 23/10/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"
#import "Recipe.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
{
    NSArray *recipes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize the recipes array
    
Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30 min";
    recipe1.image = @"egg_benedict.jpg";
    recipe1.ingredients = [NSArray arrayWithObjects:@"2 fresh English muffins", @"4 eggs", @"4 rashers of back bacon", @"2 egg yolks", @"1 tbsp of lemon juice", @"125 g of butter", @"salt and pepper", nil];
    
Recipe *recipe2 = [Recipe new];
recipe2.name = @"Mushroom Risotto"; recipe2.prepTime = @"30 min";
recipe2.image = @"mushroom_risotto.jpg";
recipe2.ingredients = [NSArray arrayWithObjects:@"1 tbsp dried porcini mushrooms",@"2 tbsp olive oil", @"1 onion, chopped", @"2 garlic cloves", @"350g/12oz arborio rice",@"1.2 litres/2 pints hot vegetable stock", @"salt and pepper", @"25g/1oz butter", nil];
    
Recipe *recipe3 = [Recipe new];
recipe3.name = @"Full Breakfast";
recipe3.prepTime = @"20 min";recipe3.image = @"full_breakfast.jpg";
recipe3.ingredients = [NSArray arrayWithObjects:@"2 sausages", @"100 grams of mushrooms", @"2 rashers of bacon", @"2 eggs", @"150 grams of baked beans", @"Vegetable oil", nil];
    
Recipe *recipe4 = [Recipe new];
recipe4.name = @"Hamburger";
recipe4.prepTime = @"30 min";
recipe4.image =@"hamburger.jpg";
recipe4.ingredients = [NSArray arrayWithObjects:@"400g of ground beef", @"1/4 onion (minced)", @"1 tbsp butter", @"hamburger bun", @"1 teaspoon dry mustard", @"Salt and pepper", nil];
    
Recipe *recipe5 = [Recipe new];
recipe5.name = @"Ham and Egg Sandwich";
recipe5.prepTime = @"10 min";
recipe5.image = @"ham_and_egg_sandwich.jpg";
recipe5.ingredients = [NSArray arrayWithObjects:@"1 unsliced loaf (1 pound) French bread", @"4 tablespoons butter", @"2 tablespoons mayonnaise", @"8 thin slices deli ham",
@"1 large tomato, sliced", @"1 small onion", @"8 eggs", @"8 slices cheddar cheese", nil];
    
Recipe *recipe6 = [Recipe new];
recipe6.name = @"Creme Brelee";
recipe6.prepTime = @"1 hour";
recipe6.image = @"creme_brelee.jpg";
recipe6.ingredients = [NSArray arrayWithObjects:@"1 quart heavy cream", @"1 vanilla bean, split and scraped", @"1 cup vanilla sugar", @"6 large egg yolks", @"2 quarts hot water", nil];
    
Recipe *recipe7 = [Recipe new];
recipe7.name = @"White Chocolate Donut";
recipe7.prepTime = @"45 min";
recipe7.image = @"white_chocolate_donut.jpg";
    recipe7.ingredients = [NSArray arrayWithObjects:@"3 1/4 cups flour", @"2 teaspoons baking powder", @"1/4 teaspoon salt", @"2 beaten eggs", @"2/3 cup sugar", @"2 ounces melted white chocolate", @"1/2 cup milk", nil];
    
Recipe *recipe8 = [Recipe new];
recipe8.name = @"Starbucks Coffee";
recipe8.prepTime = @"5 min";
recipe8.image = @"starbucks_coffee.jpg";
recipe8.ingredients = [NSArray arrayWithObjects:@"2/3 cup whole milk", @"6 tablespoons white chocolate chips", @"coffee", @"whipped cream", nil];
    
    
Recipe *recipe9 = [Recipe new];
recipe9.name = @"Vegetable Curry";
recipe9.prepTime = @"30 min";
recipe9.image = @"vegetable_curry.jpg";
recipe9.ingredients = [NSArray arrayWithObjects:@"1 tablespoon olive oil", @"1 onion,chopped", @"2 cloves garlic", @"2 1/2 tablespoons curry powder", @"2 quarts hot water",nil];
    
Recipe *recipe10 = [Recipe new];
recipe10.name = @"Instant Noodle with Egg";
recipe10.prepTime = @"8 min";
recipe10.image = @"instant_noodle_with_egg.jpg";
recipe10.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"2 eggs", nil];
    
Recipe *recipe11 = [Recipe new];
recipe11.name = @"Noodle with BBQ Pork";
recipe11.prepTime = @"20 min";
recipe11.image = @"noodle_with_bbq_pork.jpg";
recipe11.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"BBQ pork", @"Salt and Pepper", nil];
    
Recipe *recipe12 = [Recipe new];
recipe12.name = @"Japanese Noodle with Pork";
recipe12.prepTime = @"20 min";
recipe12.image = @"japanese_noodle_with_pork.jpg";
recipe12.ingredients = [NSArray arrayWithObjects:@"1 pack of Japanese Noodle", @"2 green onions", @"2 garlic cloves, minced", @"4 boneless pork loin chops", nil];
    
Recipe *recipe13 = [Recipe new];
recipe13.name = @"Green Tea";
recipe13.prepTime = @"5 min";
recipe13.image = @"green_tea.jpg";
recipe13.ingredients = [NSArray arrayWithObjects:@"Green tea", nil];
    
Recipe *recipe14 = [Recipe new];
recipe14.name = @"Thai Shrimp Cake";
recipe14.prepTime = @"1.5 hours";
recipe14.image = @"thai_shrimp_cake.jpg";
recipe14.ingredients = [NSArray arrayWithObjects:@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce",@"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves", nil];
    
Recipe *recipe15 = [Recipe new];
recipe15.name = @"Angry Birds Cake";
recipe15.prepTime = @"4 hours";
recipe15.image = @"angry_birds_cake.jpg";
recipe15.ingredients = [NSArray arrayWithObjects:@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk", nil];
    
Recipe *recipe16 = [Recipe new];
recipe16.name = @"Ham and Cheese Panini";
recipe16.prepTime = @"10 min";
recipe16.image = @"ham_and_cheese_panini.jpg";
recipe16.ingredients = [NSArray arrayWithObjects:@"2 tablespoons unsalted butter",@"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham", nil];
    
recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5,recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14,recipe15, recipe16, nil];
    
    //    recipeNames = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
//    
//    recipeImages = @[@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg"];
//    
//    recipePrepTimes = [NSArray arrayWithObjects:@"30 min", @"30 min", @"20 min", @"30 min", @"10 min", @"1 hour", @"45 min", @"5 min", @"30 min", @"8 min", @"20 min", @"20 min", @"5 min", @"1.5 hour", @"4 hours", @"10 min", nil];

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


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    cell.nameLabel.text = recipe.name;
    cell.thumbnailImageView.image = [UIImage imageNamed:recipe.image];
    cell.prepTimeLabel.text = recipe.prepTime;
    
    return cell;
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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        Recipe *recipe = [recipes objectAtIndex:indexPath.row];
        destViewController.recipeName = recipe.name;
    }
}

@end
