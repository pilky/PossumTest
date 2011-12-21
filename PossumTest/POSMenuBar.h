//
//  POSMenuBar.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSObject.h"

@class POSApplication;
/***************************
 Represents the menu bar
 @since PossumTest 1.0 or later
 **************************/
@interface POSMenuBar : POSObject

/***************************
 Returns whether the menu bar is enabled
 @since PossumTest 1.0 or later
 **************************/
@property (readonly, getter = isEnabled) BOOL enabled;

@end
