//
//  PNCSolDescription.h
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PNCSolDescription : NSObject

@property (nonnull) NSNumber *sol;
@property (nonnull) NSNumber *totalPhotos;
@property (nonnull) NSArray<NSArray *> *cameras;

- (instancetype)initWithDictionary:(NSDictionary *_Nonnull)dictionary;

@end


