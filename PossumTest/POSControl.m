//
//  POSControl.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSControl.h"

@implementation POSControl

- (BOOL)isEnabled {
	return [[self valueForAttribute:NSAccessibilityEnabledAttribute] boolValue];

}

@end
