//
//  PNCMarsRover.m
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCMarsRover.h"

@interface PNCMarsRover ()

@end

@implementation PNCMarsRover

- (void)setDateFormatter:(NSDateFormatter *)dateFormatter
{
	self.dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
	self.dateFormatter.timeZone = [[NSTimeZone alloc] initWithName:@"GMT"];
	self.dateFormatter.dateFormat = @"yyyy-MM-dd";
}

- (instancetype)initWithDictionay:(NSDictionary *)dictionary
{
	if (self = [super init]) {
		_name = dictionary[@"name"];
		_landingDate = dictionary[@"landing_date"];
		_launchDate = dictionary[@"launch_date"];
		_status = dictionary[@"status"];
		_maxSol = dictionary[@"max_sol"];
		_maxDate = dictionary[@"max_date"];
		_numberOfPhotos = dictionary[@"total_photos"];
		_solDescription = dictionary[@"photos"];
	}

	return self;
}

@end
