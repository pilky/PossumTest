//
//  POSUIElement.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSUIElement.h"

@implementation POSUIElement

- (NSString *)identifier {
	return nil;
}

- (BOOL)isFocused {
	return NO;
}

- (NSPoint)positionInWindow {
	return NSZeroPoint;
}

- (POSWindow *)window {
	return nil;
}

@end
