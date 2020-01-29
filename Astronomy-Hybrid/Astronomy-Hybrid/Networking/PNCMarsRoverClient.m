//
//  PNCMarsRoverClient.m
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCMarsRoverClient.h"
#import "PNCMarsRover.h"
#import "PNCMarsPhotoReference.h"

@implementation PNCMarsRoverClient

static NSString *baseURLString = @"https://api.nasa.gov/mars-photos/api/v1";
static NSString *apiKey = @"3hciNYVlQwrnNl1xSH2ooJI0ggzKro4jTo5vmCYe";

- (void)fetchMarsRoverWithName:(NSString *)name completionBlock:(PNCRoverCompletionBlock)completionBlock {
	// Create API request

	// Setup the URL
	NSString *manifestString = [baseURLString stringByAppendingPathComponent:@"manifests"];
	NSString *curiosityString = [manifestString stringByAppendingPathComponent:name];


	NSURLComponents *urlComponents = [[NSURLComponents alloc] initWithString:curiosityString];



	// Query Parameters

	NSArray *queryItems = @[
		[NSURLQueryItem queryItemWithName:@"api_key" value:apiKey]
	];

	urlComponents.queryItems = queryItems;

	NSURL *url = urlComponents.URL;
	NSLog(@"URL: %@", url);

	NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

		// Handle the responses (error vs. data)

		// Call the completion block as needed
		// check the errors

		if (error) {
			NSLog(@"Error fetching marsRover: %@", error);
			completionBlock(nil, error);
			return;
		}

		// parse the data
		NSError *jsonError = nil;
		NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		if (jsonError) {
			NSLog(@"JSON Error: %@", jsonError);
			completionBlock(nil, jsonError);
			return;
		}

		// TODO: Parse the data
		NSLog(@"JSON: %@", json);
		//Convert from dictionary to a [Quake] using NSArray
		NSDictionary *photoManifest = json[@"photo_manifest"];

		PNCMarsRover *rover = [[PNCMarsRover alloc] initWithDictionary:photoManifest];

		completionBlock(rover, nil);
	}];
	[task resume];

}

- (void)fetchPhotosFromRover:(PNCMarsRover *)rover onSol:(NSNumber *)sol completionBlock:(PNCPhotoReferenceCompletionBlock)completionBlock {

	NSString *roversString = [baseURLString stringByAppendingPathComponent:@"rovers"];
	NSString *roverNameString = [roversString stringByAppendingPathComponent:rover.name];
	NSString *photosString = [roverNameString stringByAppendingPathComponent:@"photos"];


	NSURLComponents *urlComponents = [[NSURLComponents alloc] initWithString:photosString];


	// Query Parameters

	NSArray *queryItems = @[
		[NSURLQueryItem queryItemWithName:@"sol" value:[sol stringValue]],
		[NSURLQueryItem queryItemWithName:@"api_key" value:apiKey]
	];

	urlComponents.queryItems = queryItems;

	NSURL *url = urlComponents.URL;
	NSLog(@"URL: %@", url);

	NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

		// Handle the responses (error vs. data)

		// Call the completion block as needed
		// check the errors

		if (error) {
			NSLog(@"Error fetching marsRoverPhotos: %@", error);
			completionBlock(nil, error);
			return;
		}

		// parse the data
		NSError *jsonError = nil;
		NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		if (jsonError) {
			NSLog(@"JSON Error: %@", jsonError);
			completionBlock(nil, jsonError);
			return;
		}

		// TODO: Parse the data
		NSLog(@"JSON: %@", json);
		//Convert from dictionary to a [Quake] using NSArray

		NSArray *photoArray = json[@"photos"];
		NSMutableArray *photoReferences = [[NSMutableArray alloc] init];

		for (NSDictionary *photo in photoArray) {
			PNCMarsPhotoReference *photoReference = [[PNCMarsPhotoReference alloc] initWithDictionary:photo];
			[photoReference addObject:photoReference];
		}

		completionBlock(photoReferences, nil);
	}];
	[task resume];
}

- (void)fetchImageFromPhotoURL:(NSURL*)photoURL completionBlock:(PNCImageCompletionBlock)completionBlock {
	NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:photoURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

		// Handle the responses (error vs. data)

		// Call the completion block as needed
		// check the errors

		if (error) {
			NSLog(@"Error fetching photo: %@", error);
			completionBlock(nil, error);
			return;
		}

		// parse the data


		completionBlock(data, nil);
	}];
	[task resume];
}
@end
