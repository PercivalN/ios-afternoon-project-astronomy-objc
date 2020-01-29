//
//  PNCMarsPhotoReference.m
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCMarsPhotoReference.h"

@implementation PNCMarsPhotoReference

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
	if (self = [super init]) {
		_referenceId = dictionary[@"id"];
		_sol = dictionary[@"sol"];
		NSDictionary *cameraDictionary = dictionary[@"camera"];

		NSNumber *cameraId = cameraDictionary[@"id"];
		NSString *name = cameraDictionary[@"name"];
		NSNumber *cameraRoverId = cameraDictionary[@"rover_id"];
		NSString *cameraFullName = cameraDictionary[@"full_name"];

		_camera = [[PNCCamera alloc] initWithId:[cameraId intValue] name:name roverId:[cameraRoverId intValue] fullName:cameraFullName];

		_earthDate = dictionary[@"earth_date"];
		_imageURL = dictionary[@"img_src"];
	}
	return self;
}


@end
