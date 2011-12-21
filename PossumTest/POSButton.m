//
//  POSButton.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSButton.h"

@implementation POSButton

@dynamic focused;

- (void)setFocused:(BOOL)aFocused {
	[self setValue:[NSNumber numberWithBool:aFocused] forAttribute:NSAccessibilityFocusedAttribute];
}


- (NSString *)title {
	return [self valueForAttribute:NSAccessibilityTitleAttribute];

}


- (POSButtonType)type {
	NSString *role = [self valueForAttribute:NSAccessibilityRoleAttribute];
	if ([role isEqualToString:NSAccessibilityDisclosureTriangleRole])
		return POSButtonTypeDisclosure;
	if ([role isEqualToString:NSAccessibilityCheckBoxRole])
		return POSButtonTypeCheckBox;
	if ([role isEqualToString:NSAccessibilityRadioButtonRole])
		return POSButtonTypeRadio;
	return POSButtonTypeNormal;

}


- (NSInteger)value {
	return [[self valueForAttribute:NSAccessibilityTitleAttribute] integerValue];

}


- (void)press {
	[self performAction:NSAccessibilityPressAction];
}

@end
