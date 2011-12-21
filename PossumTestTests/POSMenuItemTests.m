//
//  POSMenuItemTests.m
//  PossumTest
//
//  Created by Martin Pilkington on 20/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSMenuItemTests.h"

@implementation POSMenuItemTests {
	M3FakeAccessibleUIElement *fakeElement;
	POSMenuItem *menuItem;
}

- (void)setUp {
	[super setUp];
	fakeElement = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityMenuItemRole subrole:nil];
	menuItem = [[POSMenuItem alloc] initWithAccessibleUIElement:fakeElement skipChecks:YES];
}

#pragma mark -

//*****//
- (void)testSelected_getting {
	[fakeElement setValue:[NSNumber numberWithBool:YES] forAttribute:NSAccessibilitySelectedAttribute error:NULL];
	STAssertTrue(menuItem.isSelected, @"Menu item should be selected");
}

//*****//
- (void)testSelected_setting {
	[menuItem setSelected:YES];
	STAssertTrue([[fakeElement valueForAttribute:NSAccessibilitySelectedAttribute error:NULL] boolValue], @"Fake menu item should be selected");
}

#pragma mark -

//*****//
- (void)testTitle {
	[fakeElement setValue:@"foo" forAttribute:NSAccessibilityTitleAttribute error:NULL];
	STAssertEqualObjects(menuItem.title, @"foo", @"Title should be 'foo'");
}

#pragma mark -

//*****//
- (void)testKeyEquivalent {

}

#pragma mark -

//*****//
- (void)testKeyEquivalentModifierMask {
	
}

@end
