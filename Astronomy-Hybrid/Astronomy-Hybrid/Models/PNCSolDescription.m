//
//  PNCSolDescription.m
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCSolDescription.h"

@implementation PNCSolDescription

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	if (self = [super init]) {
		_sol = dictionary[@"sol"];
		_totalPhotos = dictionary[@"total_photos"];
		_cameras = dictionary[@"cameras"];
	}
	return self;
}



@end
