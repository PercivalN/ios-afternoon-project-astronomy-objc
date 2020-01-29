//
//  ViewController.m
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/27/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.

	/*

	 https://api.nasa.gov/mars-photos/api/v1/manifests/curiosity?api_key=DEMO_KEY
	 https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=DEMO_KEY

	 Structure:
	 CollectionView: Swift
	 DetailView: Swift
	 One Model: Swift (Or use ObjC for all)

	 Cache (ObjC)
	 ModelController: ObjC

	 1. Try to download the JSON for the manifest
		2. Try to download the JSON for a given sol (#1, #10, #92 other)
	 3. Refactor code into a model controller
	 4. Building model objects to pull out information

	 */

	//NSURL *url = [NSURL
//				  URLWithString:@"https://api.nasa.gov/mars-photos/api/v1/manifests/curiosity?api_key=DEMO_KEY"];
}


@end
