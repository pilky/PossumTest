//
//  POSUIElement.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSUIElementProtocol.h"
#import "POSObject.h"

/***************************
 Represents a UI element such as a label or a control
 @since PossumTest 1.0 or later
 **************************/
@interface POSUIElement : POSObject <POSUIElement>

/***************************
 Return the user interface identifier
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) NSString *identifier;

@end
