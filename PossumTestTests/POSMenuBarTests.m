//
//  POSMenuBarTests.m
//  PossumTest
//
//  Created by Martin Pilkington on 20/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSMenuBarTests.h"

@implementation POSMenuBarTests {
	M3FakeAccessibleUIElement *fakeElement;
	POSMenuBar *menuBar;
}

- (void)setUp {
	[super setUp];
	fakeElement = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityMenuBarRole subrole:nil];
	menuBar = [[POSMenuBar alloc] initWithAccessibleUIElement:fakeElement skipChecks:YES];
}

- (void)testEnabled {
	[fakeElement setValue:[NSNumber numberWithBool:YES] forAttribute:NSAccessibilityEnabledAttribute error:NULL];
	STAssertTrue(menuBar.isEnabled, @"Menubar should be enabled");
}

@end
