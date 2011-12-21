//
//  POSMenuObject.m
//  PossumTest
//
//  Created by Martin Pilkington on 20/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSMenuObject.h"

@implementation POSMenuObject

//*****//
- (BOOL)isEnabled {
	return [[self valueForAttribute:NSAccessibilityEnabledAttribute] boolValue];
}

//*****//
- (void)press {
	[self performAction:NSAccessibilityPressAction];
}

//*****//
- (void)cancel {
	[self performAction:NSAccessibilityCancelAction];
}

@end
