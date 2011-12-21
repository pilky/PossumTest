//
//  POSMenuBar.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSMenuBar.h"

@implementation POSMenuBar

- (BOOL)isEnabled {
	return [[self valueForAttribute:NSAccessibilityEnabledAttribute] boolValue];
}

@end
