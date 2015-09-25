//
//  FMViewController.h
//  rm3
//
//  Created by Elise Harris on 9/20/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *familyMemberImage;
- (IBAction)close:(id)sender;
@property (weak, nonatomic) NSString *familyMemberName;
@end
