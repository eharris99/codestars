//
//  TravelAppViewController.m
//  RemKoolhaasTravelApp
//
//  Created by Elise Harris on 9/4/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "TravelAppViewController.h"
#import "TravelAppViewCell.h"
#import "DetailViewController.h"

@interface TravelAppViewController ()

@end

@implementation TravelAppViewController

{
    NSArray *buildingNames;
    NSArray *buildingImages;
    NSArray *buildingDescriptions;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    buildingNames = @[@"Seattle Library", @"Beijing Television Cultural Center", @"Netherlands Embassy", @"IIT McCormick Services Center", @"CCTV Building", @"Casa de Musica"];
    
    buildingImages = @[@"seattle_library.jpg", @"beijing-television-cultural-center.jpg", @"netherlands_embassy.jpg",  @"iit_mccormick.jpg", @"cctv_building.jpg", @"casa.de.musica.jpg"];
    
    buildingDescriptions = @[@"The 11-level Seattle Central Library opened its doors at 1000 Fourth Ave. in May of 2004.", @"The Beijing building, finished for the 2008 Olympic Games, has a continuous ground floor lobby, a 1500-seat theater, a large ballroom, digital cinemas, recording studios and exhibition facilities. The tower accommodates a five-star hotel; guests enter at a dedicated drop-off from the east of the building and ascend to the fifth floor housing the check-in as well as restaurants, lounges, and conference rooms.", @"The Netherlands Embassy in Berlin is a disciplined cube with equally disciplined irregularities which aims to facilitate a better understanding of Berlin, confronting divergent ideas about how the city, with its complexity, heaviness, opacity, and beauty, should build / rebuild.", @"In Chicago, IIT's McCormick Tribune Campus Center (MTCC) at 33rd and State Streets opened in September 2003. The design includes a concrete and stainless steel tube that encloses a 530-foot stretch of the Chicago Transit Authority's elevated Green Line commuter rail (\"L\") tracks, passing directly over the one-story campus center building. The tube dampens the sound of trains overhead as students enjoy food courts, student organization offices, retail shops, a recreational facility and campus events.", @"The CCTV Headquarters in Beijing was completed in May 2012. It won the 2013 Best Tall Building Worldwide from the Council on Tall Buildings and Urban Habitat.", @"Casa da Música (English: House of Music) is a major concert hall space in Porto, Portugal. It was finished in 2005. It houses the cultural institution of the same name with its three orchestras Orquestra Nacional do Porto, Orquestra Barroca and Remix Ensemble. It was built as part of Porto's project for European Culture Capital and immediately became an icon in the city."];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [buildingNames count];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showBuildingDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        destViewController.buildingName = [buildingNames objectAtIndex:indexPath.row];
        destViewController.buildingImage=[buildingImages objectAtIndex:indexPath.row];
        destViewController.buildingDetailDescription=[buildingDescriptions objectAtIndex:indexPath.row];
//        destViewController.buildingImage=[buildingImages objectAtIndex:indexPath.row];
//        destViewController.buildingDetailDescription=[buildingDescriptions objectAtIndex:indexPath.row];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
 TravelAppViewCell *cell = (TravelAppViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
cell.nameLabel.text = [buildingNames objectAtIndex:indexPath.row];
cell.thumbnailImageView.image = [UIImage imageNamed:[buildingImages objectAtIndex:indexPath.row]];
    return cell;
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
