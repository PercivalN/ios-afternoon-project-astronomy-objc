//
//  PNCMarsRover.h
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PNCSolDescription.h"

@interface PNCMarsRover : NSObject

@property NSString *name;
@property NSDate *launchDate;
@property NSDate *landingDate;
@property NSString *status;
@property NSNumber *maxSol;
@property NSDate *maxDate;
@property NSNumber *numberOfPhotos;
@property NSArray<PNCSolDescription *> *solDescription;
@property (nonatomic) NSDateFormatter *dateFormatter;

- (instancetype)initWithDictionay:(NSDictionary *)dictionary;

@end


