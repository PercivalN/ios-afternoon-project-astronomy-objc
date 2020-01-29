//
//  PNCCache.h
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface PNCCache: NSCache

- (void)cacheValueForKey:(NSString * _Nonnull)key value:(NSData * _Nonnull)value;
- (NSData * _Nullable)valueForKey:(NSString * _Nonnull)key;


@end


