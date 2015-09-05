//
//  DetailViewController.h
//  RemKoolhaasTravelApp
//
//  Created by Elise Harris on 9/4/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TravelAppViewController.h"
#import "TravelAppViewCell.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *buildingLabel;
@property (nonatomic, strong) NSString *buildingName;
@property (nonatomic, strong) IBOutlet UIImageView* buildingPic;
@property (nonatomic, strong) NSString* buildingImage;
@property (nonatomic, strong) IBOutlet UITextView *buildingDetailSpace;
@property (nonatomic, strong) NSString *buildingDetailDescription;


@end
