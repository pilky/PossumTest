//
//  POSMenu.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSObject.h"

@interface POSMenu : POSObject

@property (readonly, getter = isEnabled) BOOL enabled;

- (void)press;
- (void)cancel;


@end
