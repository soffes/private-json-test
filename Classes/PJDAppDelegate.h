//
//  PJDAppDelegate.h
//  PrivateJSONTest
//
//  Created by Sam Soffes on 11/4/09.
//  Copyright 2009 Sam Soffes. All rights reserved.
//

@class PJDViewController;

@interface PJDAppDelegate : NSObject <UIApplicationDelegate> {
	
    UIWindow *window;
	PJDViewController *viewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) PJDViewController *viewController;

@end
