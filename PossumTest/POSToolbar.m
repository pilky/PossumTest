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
	NSPredicate *predicate = [NSPredicate predicateWithFormat:@"class = 'POSButton' AND title = %@", aTitle];
	NSArray *buttons = [self.children filteredArrayUsingPredicate:predicate];
	if ([buttons count]) 
		return [buttons objectAtIndex:0];
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
