//
//  POSObject.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSObject.h"

@implementation POSObject

@synthesize accessibleUIElement;

- (id)initWithAccessibleUIElement:(M3AccessibleUIElement *)aElement {
	if ((self = [super init])) {
		accessibleUIElement = aElement;
	}
	return self;
}

- (NSArray *)children {
	return nil;
}

- (NSSize)size {
	return NSZeroSize;
}

- (NSPoint)positionOnScreen {
	return NSZeroPoint;
}

- (POSObject *)parent {
	return nil;
}

@end
