//
//  POSUIElementTests.m
//  PossumTest
//
//  Created by Martin Pilkington on 18/12/2011.
//  Copyright (c) 2011 M Cubed Software. All rights reserved.
//

#import "POSUIElementTests.h"
#import "POSUIElement.h"

@implementation POSUIElementTests {
	M3FakeAccessibleUIElement *fakeElement;
	POSUIElement *element;
}

- (void)setUp {
	[super setUp];
	fakeElement = [[M3FakeAccessibleUIElement alloc] initWithRole:@"" subrole:nil];
	element = [[POSUIElement alloc] initWithAccessibleUIElement:fakeElement skipChecks:YES];
}

#pragma mark -

//*****//
- (void)testIdentifier {
	[fakeElement setValue:@"identifier" forAttribute:NSAccessibilityIdentifierAttribute error:NULL];
	STAssertEqualObjects(element.identifier, @"identifier", @"Identifiers don't match");
}

#pragma mark -

//*****//
- (void)testIsFocused {
	[fakeElement setValue:[NSNumber numberWithBool:YES] forAttribute:NSAccessibilityFocusedAttribute error:NULL];
	STAssertEquals(element.isFocused, YES, @"Element is focusesd don't match");
}

#pragma mark -

//*****//
- (void)testPositionInWindow {
	NSValue *windowPoint = [NSValue valueWithPoint:NSMakePoint(10, 10)];
	
	M3FakeAccessibleUIElement *fakeWindow = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityWindowRole subrole:nil];
	[fakeWindow setValue:windowPoint forAttribute:NSAccessibilityPositionAttribute error:NULL];
	POSWindow *window = [[POSWindow alloc] initWithAccessibleUIElement:fakeWindow];
	
	NSValue *elementPoint = [NSValue valueWithPoint:NSMakePoint(20, 15)];
	[fakeElement setValue:window forAttribute:NSAccessibilityWindowAttribute error:NULL];
	[fakeElement setValue:elementPoint forAttribute:NSAccessibilityPositionAttribute error:NULL];
	
	NSPoint position = element.positionInWindow;
	STAssertEquals(position.x, (CGFloat)10, @"X position wasn't 10");
	STAssertEquals(position.y, (CGFloat)5, @"Y position wasn't 5");
}

#pragma mark -

//*****//
- (void)testWindow {
	[fakeElement setValue:@"window" forAttribute:NSAccessibilityWindowAttribute error:NULL];
	STAssertEqualObjects(element.window, @"window", @"Window objects don't match");
}

@end
