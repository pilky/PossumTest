//
//  POSMenuItem.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSMenuObject.h"

/***************************
 Represents a menu item
 @since PossumTest 1.0 or later
 **************************/
@interface POSMenuItem : POSMenuObject 

/***************************
 The selected state of the menu bar item
 @since PossumTest 1.0 or later
 **************************/
@property (assign, getter = isSelected) BOOL selected;

/***************************
 The menu bar item's title
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) NSString *title;

/***************************
 Returns the key equivalent for the menu item
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) char keyEquivalent;

/***************************
 Returns the modifier mask for the menu item
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) NSUInteger keyEquivalentModifierMask;

@end
