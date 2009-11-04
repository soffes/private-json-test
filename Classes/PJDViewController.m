//
//  PJDViewController.m
//  PrivateJSONTest
//
//  Created by Sam Soffes on 11/4/09.
//  Copyright 2009 Sam Soffes. All rights reserved.
//

#import "PJDViewController.h"
#import "JSON-JSONParser.h"
#import "JSON-JSONWriter.h"

@implementation PJDViewController

#pragma mark -
#pragma mark NSObject
#pragma mark -

- (void)dealloc {
	[outputView release];
	[super dealloc];
}


#pragma mark -
#pragma mark UIViewController
#pragma mark -

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	// Setup output view
	outputView = [[UITextView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height)];
	outputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	outputView.font = [UIFont systemFontOfSize:13.0];
	[self.view addSubview:outputView];
	
	// Parsing
	NSString *testJSONString = @"[\"foo\",\"bar\"]";
	NSData *data = [testJSONString dataUsingEncoding:NSUTF8StringEncoding];
	NSLog(@"Start testJSONString parse");
	NSArray *parsedTestJSONString = [JSON objectWithData:data options:0 error:nil];
	NSLog(@"End testJSONString parse");
	
	// Writing
	NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:3], @"foo", [NSArray arrayWithObjects:@"dog", @"cat", @"fish", nil], @"animals", nil];
	NSLog(@"Start dictionary write");
	NSString *dictionaryJSONString = [JSON stringWithObject:dictionary options:0 error:nil];
	NSLog(@"End dictionary write");
	
	// Show output
	outputView.text = [NSString stringWithFormat:@"Parsing:\n\n%@\n\n\n\n\nWriting:\n\n%@", [parsedTestJSONString description], dictionaryJSONString];
}

@end
