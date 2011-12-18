//
//  POSElementProtocol.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class POSWindow;

/***************************
 A UI Element within a window 
 @since PossumTest 1.0 or later
 **************************/
@protocol POSUIElement <NSObject>

/***************************
 Returns if the UI element is the focused element
 @since PossumTest 1.0 or later
 **************************/
@property (readonly, getter=isFocused) BOOL focused;

/***************************
 Returns the position of the UI element in the window
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) NSPoint positionInWindow;

/***************************
 Returns the window to which the UI element belongs
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) POSWindow *window;

@end
