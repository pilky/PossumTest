//
//  POSToolbar.m
//  PossumTest
//
//  Created by Martin Pilkington on 20/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSToolbarTests.h"

@implementation POSToolbarTests {
	M3FakeAccessibleUIElement *fakeElement;
	POSToolbar *toolbar;
}

- (void)setUp {
	[super setUp];
	fakeElement = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityToolbarRole subrole:nil];
	toolbar = [[POSToolbar alloc] initWithAccessibleUIElement:fakeElement skipChecks:YES];
}

#pragma mark -

//*****//
- (void)testButtonWithTitle_returnsButtonIfTitleMatches {
	M3FakeAccessibleUIElement *buttonElement = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityButtonRole subrole:nil];
	[buttonElement setValue:@"foo" forAttribute:NSAccessibilityTitleAttribute error:NULL];
	
	[fakeElement setValue:[NSArray arrayWithObject:buttonElement] forAttribute:NSAccessibilityChildrenAttribute error:NULL];
	
	POSButton *toolbarButton = [toolbar buttonWithTitle:@"foo"];
	STAssertEqualObjects(@"foo", toolbarButton.title, @"Toolbar didn't return correct button");
}

//*****//
- (void)testButtonWithTitle_returnsNilIfNoButtons {
	M3FakeAccessibleUIElement *element = [[M3FakeAccessibleUIElement alloc] initWithRole:@"" subrole:nil];
	
	[fakeElement setValue:[NSArray arrayWithObject:element] forAttribute:NSAccessibilityChildrenAttribute error:NULL];
	
	POSButton *toolbarButton = [toolbar buttonWithTitle:@"foo"];
	STAssertNil(toolbarButton, @"There should be no button returned");
}

//*****//
- (void)testButtonWithTitle_returnsNilIfNoMatchingButtons {
	M3FakeAccessibleUIElement *buttonElement = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityButtonRole subrole:nil];
	[buttonElement setValue:@"bar" forAttribute:NSAccessibilityDescriptionAttribute error:NULL];
	
	[fakeElement setValue:[NSArray arrayWithObject:buttonElement] forAttribute:NSAccessibilityChildrenAttribute error:NULL];
	
	POSButton *toolbarButton = [toolbar buttonWithTitle:@"foo"];
	STAssertNil(toolbarButton, @"There should be no button returned");
}

#pragma mark -

//*****//
- (void)testIsFocused {
	[fakeElement setValue:[NSNumber numberWithBool:YES] forAttribute:NSAccessibilityFocusedAttribute error:NULL];
	STAssertEquals(toolbar.isFocused, YES, @"Element is focusesd don't match");
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
	
	NSPoint position = toolbar.positionInWindow;
	STAssertEquals(position.x, (CGFloat)10, @"X position wasn't 10");
	STAssertEquals(position.y, (CGFloat)5, @"Y position wasn't 5");
}

#pragma mark -

//*****//
- (void)testWindow {
	[fakeElement setValue:@"window" forAttribute:NSAccessibilityWindowAttribute error:NULL];
	STAssertEqualObjects(toolbar.window, @"window", @"Window objects don't match");
}

@end
