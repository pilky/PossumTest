//
//  POSMenuObjectTests.m
//  PossumTest
//
//  Created by Martin Pilkington on 20/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSMenuObjectTests.h"
#import "POSMenuObject.h"

@implementation POSMenuObjectTests {
	M3FakeAccessibleUIElement *fakeElement;
	POSMenuObject *menuObject;
}

- (void)setUp {
	[super setUp];
	fakeElement = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityMenuItemRole subrole:nil];
	menuObject = [[POSMenuObject alloc] initWithAccessibleUIElement:fakeElement skipChecks:YES];
}

#pragma mark -

//*****//
- (void)testEnabled {
	[fakeElement setValue:[NSNumber numberWithBool:YES] forAttribute:NSAccessibilityEnabledAttribute error:NULL];
	STAssertTrue(menuObject.isEnabled, @"Menu bar item should be enabled");
}

#pragma mark -

//*****//
- (void)testPress {
	[menuObject press];
	STAssertEqualObjects(fakeElement.lastPerformedAction, NSAccessibilityPressAction, @"Press didn't result in a press action");
}

#pragma mark -

//*****//
- (void)testCancel {
	[menuObject cancel];
	STAssertEqualObjects(fakeElement.lastPerformedAction, NSAccessibilityCancelAction, @"Cancel didn't result in a cancel action");
}

@end
