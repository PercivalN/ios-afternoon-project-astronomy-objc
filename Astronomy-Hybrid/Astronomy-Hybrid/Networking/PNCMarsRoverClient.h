//
//  PNCMarsRoverClient.h
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>


@class PNCMarsRover;
@class PNCMarsPhotoReference;

typedef void (^PNCRoverCompletionBlock)(PNCMarsRover *, NSError *);
typedef void (^PNCPhotoReferenceCompletionBlock)(NSArray<PNCMarsPhotoReference *> *, NSError *);
typedef void (^PNCImageCompletionBlock)(NSData *, NSError *);

@interface PNCMarsRoverClient : NSObject

- (void)fetchMarsRoverWithName:(NSString *)name completionBlock:(PNCRoverCompletionBlock)completionBlock;
- (void)fetchPhotosFromRover:(PNCMarsRover *)rover onSol:(NSNumber *)sol completionBlock:(PNCPhotoReferenceCompletionBlock)completionBlock;
- (void)fetchImageFromPhotoReference:(NSArray<PNCMarsPhotoReference *> *)photoReference completionBlock:(PNCImageCompletionBlock)completionBlock;

@end


