//
//  FamilyMemberCollectionViewController.m
//  rm3
//
//  Created by Elise Harris on 9/20/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "FamilyMemberCollectionViewController.h"
#import "FamilyMemberCollectionViewCell.h"
#import "FMViewController.h"
#import "FamilyMember.h"

@interface FamilyMemberCollectionViewController ()<UISearchBarDelegate>

@property (nonatomic,strong) NSArray        *dataSource;
@property (nonatomic,strong) NSArray        *dataSourceForSearchResult;
@property (nonatomic)        BOOL           searchBarActive;
@property (nonatomic)        float          searchBarBoundsY;

@property (nonatomic,strong) UISearchBar        *searchBar;
@property (nonatomic,strong) UIRefreshControl   *refreshControl;

@end

@implementation FamilyMemberCollectionViewController



{
    NSArray *familymembers;
    NSArray *searchResults;
    
}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];

self.dataSourceForSearchResult = [NSArray new];

    
    FamilyMember *fm1 = [FamilyMember new];
    fm1.name = @"Damon";
    fm1.relationship = @"ex son in law";
    fm1.image = @"damon.jpg";
    fm1.age = [NSArray arrayWithObjects:@"30", nil];
    
    FamilyMember *fm2 = [FamilyMember new];
    fm2.name = @"Kim";
    fm2.relationship= @"step-daughter";
    fm2.image = @"images.jpeg";
    fm2.age = [NSArray arrayWithObjects:@"30", nil];
    
    FamilyMember *fm3 = [FamilyMember new];
    fm3.name = @"Kourtney";
    fm3.relationship = @"step-daughter";
    fm3.image = @"img-thing.jpg";
    fm3.age = [NSArray arrayWithObjects:@"30", nil];
    
    FamilyMember *fm4 = [FamilyMember new];
    fm4.name = @"Kanye";
    fm4.relationship = @"step son in law";
    fm4.image =@"kanyewest_a.jpg";
    fm4.age = [NSArray arrayWithObjects:@"35", nil];
    
    FamilyMember *fm5 = [FamilyMember new];
    fm5.name = @"Kendall";
    fm5.relationship = @"daughter";
    fm5.image = @"Kendall+Jenner+Celebrity+Social+Media+Pics+P1dOf43hRoSl.jpg";
    fm5.age = [NSArray arrayWithObjects:@"25", nil];
    
    FamilyMember *fm6 = [FamilyMember new];
    fm6.name = @"Khloe";
    fm6.relationship = @"step-daughter";
    fm6.image = @"khloe-kardashian.jpg";
    fm6.age = [NSArray arrayWithObjects:@"26", nil];
    
    FamilyMember *fm7 = [FamilyMember new];
    fm7.name = @"Kim";
    fm7.relationship = @"step-daughter";
    fm7.image = @"kim_kardashian_headshot_e.jpg";
    fm7.age = [NSArray arrayWithObjects:@"29", nil];
    
    FamilyMember *fm8 = [FamilyMember new];
    fm8.name = @"Kim";
    fm8.relationship = @"step-daughter";
    fm8.image = @"Kim-Kardashian-headshot-2-276x300.jpg";
    fm8.age = [NSArray arrayWithObjects:@"29", nil];
    
    FamilyMember *fm9 = [FamilyMember new];
    fm9.name = @"Kris";
    fm9.relationship = @"son-in-law";
    fm9.image = @"kris-humphries.jpg";
    fm9.age = [NSArray arrayWithObjects:@"28",nil];
    
    FamilyMember *fm10 = [FamilyMember new];
    fm10.name = @"Kylie";
    fm10.relationship = @"daughter";
    fm10.image = @"Kylie-Jenner-Hair.jpg";
    fm10.age = [NSArray arrayWithObjects:@"24", nil];
    
    FamilyMember *fm11 = [FamilyMember new];
    fm11.name = @"North West";
    fm11.relationship = @"step-grand-daughter";
    fm11.image = @"northwest.jpg";
    fm11.age = [NSArray arrayWithObjects:@"2", nil];
    
    FamilyMember *fm12 = [FamilyMember new];
    fm12.name = @"Scott Disick";
    fm12.relationship = @"son-in-law";
    fm12.image = @"scott-disick-300.jpg";
    fm12.age = [NSArray arrayWithObjects:@"32", nil];
    
    FamilyMember *fm13 = [FamilyMember new];
    fm13.name = @"Cris";
    fm13.relationship = @"ex-wife";
    fm13.image = @"Screen-Shot-2013-01-28-at-7.49.13-PM.png";
    fm13.age = [NSArray arrayWithObjects:@"60", nil];
    
    FamilyMember *fm14 = [FamilyMember new];
    fm14.name = @"Naya";
    fm14.relationship = @"daughter";
    fm14.image = @"w630_naya-headshot2";
    fm14.age = [NSArray arrayWithObjects:@"18", nil];
     
    
    
familymembers = [NSArray arrayWithObjects:fm1, fm2, fm3, fm4, fm5,fm6, fm7, fm8, fm9, fm10, fm11, fm12, fm13, fm14, nil];
    
//self.dataSource= @[@"damon.jpg", @"images.jpeg",@"img-thing.jpg",@"kanyewest_a.jpg", @"Kendall+Jenner+Celebrity+Social+Media+Pics+P1dOf43hRoSl.jpg",@"khloe-kardashian.jpg", @"kim_kardashian_headshot_e.jpg",@"Kim-Kardashian-headshot-2-276x300.jpg", @"kris-humphries.jpg", @"Kylie-Jenner-Hair.jpg",@"northwest.jpg", @"scott-disick-300.jpg",@"Screen-Shot-2013-01-28-at-7.49.13-PM.png",@"w630_naya-headshot2"];
    
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self prepareUI];
}
-(void)dealloc{
    // remove Our KVO observer
    [self removeObservers];
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

-(void)refreashControlAction{
    [self cancelSearching];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // stop refreshing after 2 seconds
        [self.collectionView reloadData];
        [self.refreshControl endRefreshing];
    });
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (self.searchBarActive) {
        return self.dataSourceForSearchResult.count;
    }
    return self.dataSource.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    FamilyMemberCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    FamilyMember *familymember;
    // Configure the cell
    if (self.searchBarActive) {
        familymember = [searchResults objectAtIndex:indexPath.row];
    }else{
        familymember  = [searchResults objectAtIndex:indexPath.row];
    }
    return cell;
}


#pragma mark -  <UICollectionViewDelegateFlowLayout>
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout*)collectionViewLayout
        insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(self.searchBar.frame.size.height, 0, 0, 0);
}
- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout*)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat cellLeg = (self.collectionView.frame.size.width/2) - 5;
    return CGSizeMake(cellLeg,cellLeg);;
}


#pragma mark - search
- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope{
    NSPredicate *resultPredicate    = [NSPredicate predicateWithFormat:@"self contains[c] %@", searchText];
    self.dataSourceForSearchResult  = [familymembers filteredArrayUsingPredicate:resultPredicate];
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    // user did type something, check our datasource for text that looks the same
    if (searchText.length>0) {
        // search and reload data source
        self.searchBarActive = YES;
        [self filterContentForSearchText:searchText
                                   scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                          objectAtIndex:[self.searchDisplayController.searchBar
                                                         selectedScopeButtonIndex]]];
        [self.collectionView reloadData];
    }else{
        // if text lenght == 0
        // we will consider the searchbar is not active
        self.searchBarActive = NO;
    }
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    [self cancelSearching];
    [self.collectionView reloadData];
}
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    self.searchBarActive = YES;
    [self.view endEditing:YES];
}
- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    // we used here to set self.searchBarActive = YES
    // but we'll not do that any more... it made problems
    // it's better to set self.searchBarActive = YES when user typed something
    [self.searchBar setShowsCancelButton:YES animated:YES];
}
- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar{
    // this method is being called when search btn in the keyboard tapped
    // we set searchBarActive = NO
    // but no need to reloadCollectionView
    self.searchBarActive = NO;
    [self.searchBar setShowsCancelButton:NO animated:YES];
}
-(void)cancelSearching{
    self.searchBarActive = NO;
    [self.searchBar resignFirstResponder];
    self.searchBar.text  = @"";
}
#pragma mark - prepareVC
-(void)prepareUI{
    [self addSearchBar];
    [self addRefreshControl];
}
-(void)addSearchBar{
    if (!self.searchBar) {
        self.searchBarBoundsY = self.navigationController.navigationBar.frame.size.height + [UIApplication sharedApplication].statusBarFrame.size.height;
        self.searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(0,self.searchBarBoundsY, [UIScreen mainScreen].bounds.size.width, 44)];
        self.searchBar.searchBarStyle       = UISearchBarStyleMinimal;
        self.searchBar.tintColor            = [UIColor whiteColor];
        self.searchBar.barTintColor         = [UIColor whiteColor];
        self.searchBar.delegate             = self;
        self.searchBar.placeholder          = @"search here";
        
        [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setTextColor:[UIColor whiteColor]];
        
        // add KVO observer.. so we will be informed when user scroll colllectionView
        [self addObservers];
    }
    
    if (![self.searchBar isDescendantOfView:self.view]) {
        [self.view addSubview:self.searchBar];
    }
}

-(void)addRefreshControl{
    if (!self.refreshControl) {
        self.refreshControl                  = [UIRefreshControl new];
        self.refreshControl.tintColor        = [UIColor whiteColor];
        [self.refreshControl addTarget:self
                                action:@selector(refreashControlAction)
                      forControlEvents:UIControlEventValueChanged];
    }
    if (![self.refreshControl isDescendantOfView:self.collectionView]) {
        [self.collectionView addSubview:self.refreshControl];
    }
}
-(void)startRefreshControl{
    if (!self.refreshControl.refreshing) {
        [self.refreshControl beginRefreshing];
    }
}

#pragma mark - observer
- (void)addObservers{
    [self.collectionView addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
}
- (void)removeObservers{
    [self.collectionView removeObserver:self forKeyPath:@"contentOffset" context:Nil];
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(UICollectionView *)object change:(NSDictionary *)change context:(void *)context{
    if ([keyPath isEqualToString:@"contentOffset"] && object == self.collectionView ) {
        self.searchBar.frame = CGRectMake(self.searchBar.frame.origin.x,
        self.searchBarBoundsY + ((-1* object.contentOffset.y)-self.searchBarBoundsY),
        self.searchBar.frame.size.width,
    self.searchBar.frame.size.height);
    }
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}


//- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
//    return familyPhotos.count;
//}

//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    FamilyMemberCollectionViewCell *cell = (FamilyMemberCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
//    
//    // Configure the cell
//    
//   cell.familyMemberImage.image = [UIImage imageNamed:[self.dataSource objectAtIndex:indexPath.row]];
//cell.backgroundView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame"]];
//    
//    return cell;
//}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:@"showFamilyMember"]) {
//        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
//        UINavigationController *destViewController = segue.destinationViewController;
//        FMViewController *familyMemberViewController = (FMViewController *)
//        [destViewController.childViewControllers firstObject];
//        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
//        familyMemberViewController.familyMemberName = [familyPhotos[indexPath.section]
//        objectAtIndex:indexPath.row];
//        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
//    } }

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
if ([segue.identifier isEqualToString:@"showFamilyMember"])
{
    NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
UINavigationController *destViewController = segue.destinationViewController;
FMViewController *familyMemberViewController=(FMViewController *)[destViewController.childViewControllers firstObject];
NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
familyMemberViewController.familyMemberName=[familymembers[indexPath.section]objectAtIndex:indexPath.row];
[self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
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
