//
//  BNREmployee.h
//  bodymassindex
//
//  Created by Elise Harris on 8/21/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson

//{
//    NSMutableArray *_assets;
//}

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;
- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
