//
//  PJDAppDelegate.m
//  PrivateJSONTest
//
//  Created by Sam Soffes on 11/4/09.
//  Copyright 2009 Sam Soffes. All rights reserved.
//

#import "PJDAppDelegate.h"
#import "PJDViewController.h"

@implementation PJDAppDelegate

@synthesize window;
@synthesize viewController;

#pragma mark -
#pragma mark NSObject
#pragma mark -

- (void)dealloc {
	[viewController release];
    [window release];
    [super dealloc];
}


#pragma mark -
#pragma mark UIApplicationDelegate
#pragma mark -

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	viewController = [[PJDViewController alloc] initWithNibName:nil bundle:nil];
	[window addSubview:viewController.view];
	[window makeKeyAndVisible];
}

@end
