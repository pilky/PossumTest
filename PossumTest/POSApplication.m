//
//  POSApplication.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright (c) 2011 M Cubed Software. All rights reserved.
//

#import "POSApplication.h"
#import "POSWindow.h"
#import "POSUIElement.h"
#import "POSMenuBar.h"

@implementation POSApplication

+ (POSApplication *)application {
	return nil;
}

+ (POSApplication *)applicationAtURL:(NSURL *)aURL {
	return nil;
}

- (void)relaunch {
	
}

#pragma mark -
#pragma mark Application info

- (NSString *)title {
	return nil;
}

- (BOOL)isFrontmost {
	return nil;
}

- (void)setFrontmost:(BOOL)frontmost {
	
}

- (BOOL)isHidden {
	return nil;
}

- (void)setHidden:(BOOL)hidden {
	
}


#pragma mark -
#pragma mark References

- (POSWindow *)mainWindow {
	return nil;
}

- (POSWindow *)focusedWindow {
	return nil;
}

- (POSUIElement *)focusedUIElement {
	return nil;
}

- (POSMenuBar *)menuBar {
	return nil;
}


- (NSArray *)windows {
	return nil;
}

- (POSWindow *)windowWithIdentifier:(NSString *)aIdentifier {
	return nil;
}

@end
