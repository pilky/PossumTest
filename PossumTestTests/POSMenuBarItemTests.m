//
//  POSMenuBarItemTests.m
//  PossumTest
//
//  Created by Martin Pilkington on 20/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSMenuBarItemTests.h"

@implementation POSMenuBarItemTests {
	M3FakeAccessibleUIElement *fakeElement;
	POSMenuBarItem *menuBarItem;
}

- (void)setUp {
	[super setUp];
	fakeElement = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityMenuItemRole subrole:nil];
	menuBarItem = [[POSMenuBarItem alloc] initWithAccessibleUIElement:fakeElement skipChecks:YES];
}

#pragma mark -

//*****//
- (void)testTitle {
	[fakeElement setValue:@"foo" forAttribute:NSAccessibilityTitleAttribute error:NULL];
	STAssertEqualObjects(menuBarItem.title, @"foo", @"Menu bar item should be foo");
}

#pragma mark -

//*****//
- (void)testSelected_getting {
	[fakeElement setValue:[NSNumber numberWithBool:YES] forAttribute:NSAccessibilitySelectedAttribute error:NULL];
	STAssertTrue(menuBarItem.isSelected, @"Menu bar item should be selected");
}

//*****//
- (void)testSelected_setting {
	[menuBarItem setSelected:YES];
	STAssertTrue([[fakeElement valueForAttribute:NSAccessibilitySelectedAttribute error:NULL] boolValue], @"Fake menu item should be selected");
}

@end
