//
//  POSObject.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSObject.h"
#import "M3AccessibleUIElement.h"
#import "POSTest.h"

@implementation POSObject

@synthesize accessibleUIElement;

//*****//
- (id)initWithAccessibleUIElement:(M3AccessibleUIElement *)aElement {
	if ((self = [super init])) {
		accessibleUIElement = aElement;
	}
	return self;
}





#pragma mark -
#pragma mark Properties

//*****//
- (NSArray *)children {
	return [self valueForAttribute:NSAccessibilityChildrenAttribute];
}

//*****//
- (NSSize)size {
	return [[self valueForAttribute:NSAccessibilitySizeAttribute] sizeValue];
}

//*****//
- (NSPoint)positionOnScreen {
	return [[self valueForAttribute:NSAccessibilityPositionAttribute] pointValue];
}

//*****//
- (POSObject *)parent {
	M3AccessibleUIElement *parentElement = [self valueForAttribute:NSAccessibilityParentAttribute];
	return [[POSObject alloc] initWithAccessibleUIElement:parentElement];
}





#pragma mark -
#pragma mark Helpers

//*****//
- (id)valueForAttribute:(NSString *)aAttribute {
	NSError *error = nil;
	id value = [self.accessibleUIElement valueForAttribute:aAttribute error:&error];
	if (!value) {
		[POSTest assertError:error];
	}
	return value;
}

@end
