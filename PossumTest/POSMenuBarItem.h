//
//  POSMenuBarItem.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSMenuObject.h"

@class POSMenuBar;
/***************************
 Represents a menu bar item
 @since PossumTest 1.0 or later
 **************************/
@interface POSMenuBarItem : POSMenuObject

/***************************
 The menu bar item's title
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) NSString *title;

/***************************
 The selected state of the menu bar item
 @since PossumTest 1.0 or later
 **************************/
@property (assign, getter=isSelected) BOOL selected;

@end
