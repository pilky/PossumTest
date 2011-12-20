//
//  POSToolbar.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSObject.h"
#import "POSUIElementProtocol.h"

@class POSButton;

/***************************
 Represents a toolbar
 @since PossumTest 1.0 or later
 **************************/
@interface POSToolbar : POSObject <POSUIElement> 

/***************************
 Find the toolbar button with the supplied title
 @param aTitle The toolbar button title to search for
 @return The matching button, if found. Otherwise returns nil
 @since PossumTest 1.0 or later
 **************************/
- (POSButton *)buttonWithTitle:(NSString *)aTitle;

@end
