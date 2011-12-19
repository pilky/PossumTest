//
//  POSToolbar.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSToolbar.h"
#import "POSUIElementProtocol.h"
#import "POSWindow.h"

@implementation POSToolbar

+ (NSString *)classRole {
	return NSAccessibilityToolbarRole;
}

- (POSButton *)buttonWithTitle:(NSString *)aTitle {
	for (M3AccessibleUIElement *element in self.children) {
		
	}
	return nil;
}


- (id)groupWithTitle:(NSString *)aTitle {
	return nil;
}


- (id)itemAtIndex:(NSUInteger)aIndex {
	return nil;
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
