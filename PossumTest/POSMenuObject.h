//
//  POSMenuObject.h
//  PossumTest
//
//  Created by Martin Pilkington on 20/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSObject.h"

@interface POSMenuObject : POSObject 

/***************************
 Is the menu bar item enabled
 @since PossumTest 1.0 or later
 **************************/
@property (readonly, getter=isEnabled) BOOL enabled;

/***************************
 Perform a press action
 @since PossumTest 1.0 or later
 **************************/
- (void)press;

/***************************
 Perform a cancel action
 @since PossumTest 1.0 or later
 **************************/
- (void)cancel;

@end
