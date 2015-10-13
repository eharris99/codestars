//
//  Artist.h
//  EliseAlbums
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Artist : NSObject

@property (nonatomic, strong) NSString *name; // name of artist
@property (nonatomic, strong) NSString *link; // wikipedia link
@property (nonatomic, strong) NSString *image; // image filename of artist
@property (nonatomic, strong) NSString *blurb;

@end
