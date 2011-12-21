//
//  POSControl.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSUIElement.h"

@interface POSControl : POSUIElement 

/***************************
 Is the menu bar item enabled
 @since PossumTest 1.0 or later
 **************************/
@property (readonly, getter=isEnabled) BOOL enabled;

@end
