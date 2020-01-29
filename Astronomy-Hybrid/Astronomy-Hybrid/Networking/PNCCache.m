//
//  PNCCache.m
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCCache.h"

@interface PNCCache ()

@property (nonatomic) NSCache *cache;

@end

@implementation PNCCache

- (instancetype)init
{
	self = [super init];
	if (self) {
		_cache = [[NSCache alloc] init];
	}
	return self;
}

- (void)cacheValueForKey:(NSString *)key value:(NSData *)value {
	if (value) {
		[self.cache setObject:value forKey:key];
	}
}

- (NSData *)valueForKey:(NSString *)key {
	return [self.cache objectForKey:key];
}

@end
