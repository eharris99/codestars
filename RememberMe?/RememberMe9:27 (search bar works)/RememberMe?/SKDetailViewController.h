//
//  SKDetailViewController.h
//  RememberMe?
//
//  Created by Elise Harris on 9/27/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Kardashian.h"

@interface SKDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *knameLabel;
@property (nonatomic, strong) NSString *kName;
@property (nonatomic, strong) Kardashian *kardashian;

@end
