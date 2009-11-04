//
//  AppDelegate.m
//  PrivateJSONTest
//
//  Created by Sam Soffes on 11/4/09.
//  Copyright 2009 Sam Soffes. All rights reserved.
//

#import "AppDelegate.h"
#import "JSON-JSONParser.h"
#import "JSON-JSONWriter.h"

@implementation AppDelegate

@synthesize window;

#pragma mark -
#pragma mark NSObject
#pragma mark -

- (void)dealloc {
    [window release];
    [super dealloc];
}


#pragma mark -
#pragma mark UIApplicationDelegate
#pragma mark -

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[window makeKeyAndVisible];
	
	// Parsing
	NSString *test = @"[\"foo\",\"bar\"]";
	NSData *data = [test dataUsingEncoding:NSUTF8StringEncoding];
	NSLog(@"Parsed: %@", [JSON objectWithData:data options:0 error:nil]);
	
	// Writting
	NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:3], @"foo", [NSArray arrayWithObjects:@"dog", @"cat", @"fish", nil], @"animals", nil];
	NSLog(@"Wrote: %@", [JSON stringWithObject:dictionary options:0 error:nil]);
}

@end
