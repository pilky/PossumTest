//
//  POSApplication.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright (c) 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class POSWindow, POSUIElement, POSMenuBar;
@interface POSApplication : NSObject

+ (POSApplication *)application;
+ (POSApplication *)applicationAtURL:(NSURL *)aURL;

- (void)relaunch;


@property (readonly) NSArray *windows;
- (POSWindow *)windowWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSString *title;
@property (assign, getter = isFrontmost) BOOL frontmost;
@property (assign, getter = isHidden) BOOL hidden;
@property (readonly) POSWindow *mainWindow;
@property (readonly) POSWindow *focusedWindow;
@property (readonly) POSUIElement *focusedUIElement;
@property (readonly) POSMenuBar *menuBar;

@end
