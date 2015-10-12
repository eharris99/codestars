//
//  RssItem.h
//  RssReader
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RssItem : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *link;
@property (strong, nonatomic) NSString *contentDescription;
@property (strong, nonatomic) NSString *pubDate;

@end
