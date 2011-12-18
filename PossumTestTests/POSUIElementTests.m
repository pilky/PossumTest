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
	POSUIElement *element;
}

- (void)setUp {
	[super setUp];
	element = [[POSUIElement alloc] initWithAccessibleUIElement:self.mockElement];
}

#pragma mark -

//*****//
- (void)testIdentifier {
	[[[self.mockElement stub] andReturn:@"identifier"] valueForAttribute:NSAccessibilityIdentifierAttribute error:[OCMArg setTo:nil]];
	STAssertEqualObjects(element.identifier, @"identifier", @"Identifiers don't match");
}

#pragma mark -

//*****//
- (void)testIsFocused {
	[[[self.mockElement stub] andReturn:[NSNumber numberWithBool:YES]] valueForAttribute:NSAccessibilityFocusedAttribute error:[OCMArg setTo:nil]];
	STAssertEquals(element.isFocused, YES, @"Element is focusesd don't match");
}

#pragma mark -

//*****//
- (void)testPositionInWindow {
	NSValue *windowPoint = [NSValue valueWithPoint:NSMakePoint(10, 10)];
	
	id mockWindow = [OCMockObject mockForClass:[M3AccessibleUIElement class]];
	[[[mockWindow stub] andReturn:windowPoint] valueForAttribute:NSAccessibilityPositionAttribute error:[OCMArg setTo:nil]];
	POSWindow *window = [[POSWindow alloc] initWithAccessibleUIElement:mockWindow];
	
	NSValue *elementPoint = [NSValue valueWithPoint:NSMakePoint(20, 15)];
	[[[self.mockElement stub] andReturn:window] valueForAttribute:NSAccessibilityWindowAttribute error:[OCMArg setTo:nil]];
	[[[self.mockElement stub] andReturn:elementPoint] valueForAttribute:NSAccessibilityPositionAttribute error:[OCMArg setTo:nil]];
	
	NSPoint position = element.positionInWindow;
	STAssertEquals(position.x, (CGFloat)10, @"X position wasn't 10");
	STAssertEquals(position.y, (CGFloat)5, @"Y position wasn't 5");
}

#pragma mark -

//*****//
- (void)testWindow {
	[[[self.mockElement stub] andReturn:@"window"] valueForAttribute:NSAccessibilityWindowAttribute error:[OCMArg setTo:nil]];
	STAssertEqualObjects(element.window, @"window", @"Window objects don't match");
}

@end
