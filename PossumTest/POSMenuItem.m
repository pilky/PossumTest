//
//  POSMenuItem.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSMenuItem.h"

@implementation POSMenuItem

//*****//
- (NSString *)title {
	return [self valueForAttribute:NSAccessibilityTitleAttribute];
}

//*****//
- (BOOL)isSelected {
	return [[self valueForAttribute:NSAccessibilitySelectedAttribute] boolValue];
}

//*****//
- (void)setSelected:(BOOL)aSelected {
	[self setValue:[NSNumber numberWithBool:aSelected] forAttribute:NSAccessibilitySelectedAttribute];
}

//*****//
- (char)keyEquivalent {
	return (char)[[self valueForAttribute:@"AXMenuItemCmdChar"] integerValue];
}

//*****//
- (NSUInteger)keyEquivalentModifierMask {
	return [[self valueForAttribute:@"AXMenuItemCmdModifiers"] integerValue];
}

@end
