//
//  PNCMarsPhotoReference.h
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Astronomy_Hybrid-Swift.h"

@interface PNCMarsPhotoReference : NSObject

@property (nonnull) NSNumber *referenceId;
@property (nonnull) NSNumber *sol;
@property (nonnull) PNCCamera *camera;
@property (nonnull) NSDate *earthDate;
@property (nonnull) NSURL *imageURL;

- (instancetype)initWithDictionary:(NSDictionary *_Nonnull)dictionary;

@end


