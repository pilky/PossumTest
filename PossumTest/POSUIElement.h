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

@interface POSUIElement : POSObject <POSUIElement>

@property (readonly) NSString *identifier;

@end
