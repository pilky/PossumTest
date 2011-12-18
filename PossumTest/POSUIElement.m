//
//  POSUIElement.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSUIElement.h"
#import "POSWindow.h"

@implementation POSUIElement

//*****//
- (NSString *)identifier {
	return [self valueForAttribute:NSAccessibilityIdentifierAttribute];
}

//*****//
- (BOOL)isFocused {
	return [[self valueForAttribute:NSAccessibilityFocusedAttribute] boolValue];
}

//*****//
- (NSPoint)positionInWindow {
	NSPoint windowPosition = self.window.positionOnScreen;
	NSPoint position = self.positionOnScreen;
	return NSMakePoint(position.x - windowPosition.x, position.y - windowPosition.y);
}

//*****//
- (POSWindow *)window {
	return [self valueForAttribute:NSAccessibilityWindowAttribute];
}

@end
