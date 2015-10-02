//
//  Album.h
//  EliseAlbums
//
//  Created by Elise Harris on 10/1/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject
@property (nonatomic, strong) NSString *name; // name of album
@property (nonatomic, strong) NSString *year; // year
@property (nonatomic, strong) NSString *image; // image filename of album
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *blurb;

@end
