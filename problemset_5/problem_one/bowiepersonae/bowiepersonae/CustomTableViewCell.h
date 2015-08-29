//
//  CustomTableViewCell.h
//  bowiepersonae
//
//  Created by Elise Harris on 8/28/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *personaName;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
