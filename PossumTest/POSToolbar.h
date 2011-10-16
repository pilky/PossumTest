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
@interface POSToolbar : POSObject <POSUIElement> 

- (POSButton *)buttonWithTitle:(NSString *)aTitle;
- (id)groupWithTitle:(NSString *)aTitle;
- (id)itemAtIndex:(NSUInteger)aIndex;

@end
