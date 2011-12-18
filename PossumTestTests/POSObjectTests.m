//
//  POSObjectTests.m
//  PossumTest
//
//  Created by Martin Pilkington on 17/12/2011.
//  Copyright (c) 2011 M Cubed Software. All rights reserved.
//

#import "POSObjectTests.h"

@implementation POSObjectTests {
	POSObject *object;
}

- (void)setUp {
	[super setUp];
	object = [[POSObject alloc] initWithAccessibleUIElement:self.mockElement];
}

- (void)testValueForAttribute_returnsValueFromAccessibleUIElement {
	[[[self.mockElement stub] andReturn:@"foo"] valueForAttribute:@"bar" error:[OCMArg setTo:nil]];
	STAssertEqualObjects([object valueForAttribute:@"bar"], @"foo", @"Foo should be returned from object");
}

- (void)testValueForAttribute_assertsErrorWhenNilIsReturned {
	NSError *error = [NSError errorWithDomain:@"testdomain" code:1 userInfo:nil];
	[[[self.mockElement stub] andReturn:nil] valueForAttribute:@"bar" error:[OCMArg setTo:error]];
	STAssertThrows([object valueForAttribute:@"bar"], @"");
}

#pragma mark -

- (void)testChildren {
	[[[self.mockElement stub] andReturn:[NSArray array]] valueForAttribute:NSAccessibilityChildrenAttribute error:[OCMArg setTo:nil]];
	STAssertEqualObjects(object.children, [NSArray array], @"Children didn't return an array");
}

#pragma mark -

- (void)testSize {
	NSValue *testSize = [NSValue valueWithSize:NSMakeSize(1, 2)];
	
	[[[self.mockElement stub] andReturn:testSize] valueForAttribute:NSAccessibilitySizeAttribute error:[OCMArg setTo:nil]];
	
	NSSize size = object.size;
	STAssertTrue(NSEqualSizes(size, testSize.sizeValue), @"Sizes aren't equal");
}

#pragma mark -

- (void)testPositionOnScreen {
	NSValue *testPoint = [NSValue valueWithPoint:NSMakePoint(1, 2)];
	[[[self.mockElement stub] andReturn:testPoint] valueForAttribute:NSAccessibilityPositionAttribute  error:[OCMArg setTo:nil]];
	
	NSPoint point = object.positionOnScreen;
	STAssertTrue(NSEqualPoints(point, testPoint.pointValue), @"Positions on screen aren't equal");
}

#pragma mark -

- (void)testParent {
	[[[self.mockElement stub] andReturn:@"foo"] valueForAttribute:NSAccessibilityParentAttribute error:[OCMArg setTo:nil]];
	STAssertEqualObjects(object.parent.accessibleUIElement, @"foo", @"Accessible UI Element object should be 'foo'");
}

@end
