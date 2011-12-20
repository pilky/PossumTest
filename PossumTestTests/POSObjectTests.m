//
//  POSObjectTests.m
//  PossumTest
//
//  Created by Martin Pilkington on 17/12/2011.
//  Copyright (c) 2011 M Cubed Software. All rights reserved.
//

#import "POSObjectTests.h"

@implementation POSObjectTests {
	M3FakeAccessibleUIElement *fakeElement;
	POSObject *object;
}

//*****//
- (void)setUp {
	[super setUp];
	fakeElement = [[M3FakeAccessibleUIElement alloc] initWithRole:@"" subrole:nil];
	object = [[POSObject alloc] initWithAccessibleUIElement:fakeElement];
}



#pragma mark -

//*****//
- (void)testInitWithAccessibleUIElement_testReturnsCorrectObjectIfRolesMatch {
	id windowElement = [OCMockObject mockForClass:[M3AccessibleUIElement class]];
	[[[windowElement stub] andReturn:NSAccessibilityWindowRole] valueForAttribute:NSAccessibilityRoleAttribute error:NULL];
	
	POSWindow *window = [[POSWindow alloc] initWithAccessibleUIElement:windowElement];
	STAssertTrue([window isMemberOfClass:[POSWindow class]], @"Window should be a window");
}

//*****//
- (void)testInitWithAccessibleUIElement_testReturnsObjectOfCorrectClassIfRolesDontMatch {
	M3FakeAccessibleUIElement *element = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityWindowRole subrole:nil];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSWindow class]], @"AXWindow should give POSWindow");
	
	[element setValue:NSAccessibilityToolbarRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSToolbar class]], @"AXToolbar should give POSToolbar");
	
	[element setValue:NSAccessibilityComboBoxRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSComboBox class]], @"AXComboBox should give POSComboBox");
	
	[element setValue:NSAccessibilityPopUpButtonRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSPopUpButton class]], @"AXPopUpButton should give POSPopUpButton");
	
	[element setValue:NSAccessibilitySliderRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSSlider class]], @"AXSlider should give POSSlider");
	
	[element setValue:NSAccessibilityTableRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSTableView class]], @"AXTable should give POSTableView");
	
	[element setValue:NSAccessibilityOutlineRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSOutlineView class]], @"AXOutline should give POSOutlineView");
	
	[element setValue:NSAccessibilityColumnRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSTableViewColumn class]], @"AXColumn should give POSTableViewColumn");
	
	[element setValue:NSAccessibilityLevelIndicatorRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSLevelIndicator class]], @"AXLevelIndicator should give POSLevelIndicator");
	
	[element setValue:NSAccessibilityProgressIndicatorRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSProgressIndicator class]], @"AXProgressIndicator should give POSProgressIndicator");
	
	[element setValue:NSAccessibilityTextAreaRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSTextArea class]], @"AXTextArea should give POSTextArea");
	
	[element setValue:NSAccessibilityTabGroupRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSTabView class]], @"AXTabGroup should give POSTabView");
	
	[element setValue:NSAccessibilityMenuBarRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSMenuBar class]], @"AXMenuBar should give POSMenuBar");
	
	[element setValue:NSAccessibilityMenuButtonRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSMenuBarItem class]], @"AXMenuBarItem should give POSMenuBarItem");
	
	[element setValue:NSAccessibilityMenuRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSMenu class]], @"AXMenu should give POSMenu");
	
	[element setValue:NSAccessibilityMenuItemRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSMenuItem class]], @"AXMenuItem should give POSMenuItem");
	
	[element setValue:NSAccessibilityButtonRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSButton class]], @"AXButton should give POSButton");
	
	[element setValue:NSAccessibilityButtonRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	[element setValue:NSAccessibilitySortButtonSubrole forAttribute:NSAccessibilitySubroleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSTableViewColumnHeader class]], @"AXButton/AXSortButton should give POSTableViewColumnHeader");
	
	[element setValue:NSAccessibilityTextFieldRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	[element setValue:nil forAttribute:NSAccessibilitySubroleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSTextField class]], @"AXTextField should give POSTextField");
	
	[element setValue:NSAccessibilityTextFieldRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	[element setValue:NSAccessibilitySearchFieldSubrole forAttribute:NSAccessibilitySubroleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSSearchField class]], @"AXSearchField should give POSSearchField");
	
	[element setValue:NSAccessibilityRowRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	[element setValue:NSAccessibilityTableRowSubrole forAttribute:NSAccessibilitySubroleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSTableViewRow class]], @"AXRow/AXTableViewRow should give POSTableViewRow");
	
	[element setValue:NSAccessibilityRowRole forAttribute:NSAccessibilityRoleAttribute error:NULL];
	[element setValue:NSAccessibilityOutlineRowSubrole forAttribute:NSAccessibilitySubroleAttribute error:NULL];
	STAssertTrue([[[POSObject alloc] initWithAccessibleUIElement:element] isKindOfClass:[POSOutlineViewRow class]], @"AXRow/AXOutlineRow should give POSOutlineViewRow");
}

//*****//
- (void)testInitWithAccessibleUIElement_testReturnsPOSObjectForUnknownRole {
	M3FakeAccessibleUIElement *unknownElement = [[M3FakeAccessibleUIElement alloc] initWithRole:@"AXFoo" subrole:nil];
	
	POSObject *unknown = [[POSObject alloc] initWithAccessibleUIElement:unknownElement];
	STAssertTrue([unknown isMemberOfClass:[POSObject class]], @"Unknown object should be a plain object");
}



#pragma mark -

//*****//
- (void)testValueForAttribute_returnsValueFromAccessibleUIElement {
	[fakeElement setValue:@"foo" forAttribute:@"bar" error:NULL];
	STAssertEqualObjects([object valueForAttribute:@"bar"], @"foo", @"Foo should be returned from object");
}

//*****//
- (void)testValueForAttribute_assertsErrorWhenNilIsReturned {
	NSError *error = [NSError errorWithDomain:@"testdomain" code:1 userInfo:nil];
	[fakeElement setError:error];
	STAssertThrows([object valueForAttribute:@"bar"], @"");
}



#pragma mark -

//*****//
- (void)testChildren_noChildrenReturnsEmptyArray {
	[fakeElement setValue:[NSArray array] forAttribute:NSAccessibilityChildrenAttribute error:NULL];
	STAssertEqualObjects(object.children, [NSArray array], @"Children didn't return an array");
}

//*****//
- (void)testChildren_correctChildTypesAreReturned {
	M3FakeAccessibleUIElement *window = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityWindowRole subrole:nil];
	M3FakeAccessibleUIElement *button = [[M3FakeAccessibleUIElement alloc] initWithRole:NSAccessibilityButtonRole subrole:nil];
	[fakeElement setValue:[NSArray arrayWithObjects:window, button, nil] forAttribute:NSAccessibilityChildrenAttribute error:NULL];
	
	NSArray *children = object.children;
	STAssertEquals(children.count, (NSUInteger)2, @"There should be 2 children");
	STAssertTrue([[children objectAtIndex:0] isKindOfClass:[POSWindow class]], @"The first child should be a window");
	STAssertTrue([[children objectAtIndex:1] isKindOfClass:[POSButton class]], @"The second child should be a button");
}



#pragma mark -

//*****//
- (void)testSize {
	NSValue *testSize = [NSValue valueWithSize:NSMakeSize(1, 2)];
	
	[fakeElement setValue:testSize forAttribute:NSAccessibilitySizeAttribute error:NULL];
	
	NSSize size = object.size;
	STAssertTrue(NSEqualSizes(size, testSize.sizeValue), @"Sizes aren't equal");
}



#pragma mark -

//*****//
- (void)testPositionOnScreen {
	NSValue *testPoint = [NSValue valueWithPoint:NSMakePoint(1, 2)];
	[fakeElement setValue:testPoint forAttribute:NSAccessibilityPositionAttribute error:NULL];
	NSPoint point = object.positionOnScreen;
	STAssertTrue(NSEqualPoints(point, testPoint.pointValue), @"Positions on screen aren't equal");
}



#pragma mark -

//*****//
- (void)testParent {
	M3FakeAccessibleUIElement *parentElement = [[M3FakeAccessibleUIElement alloc] initWithRole:@"" subrole:nil];
	[fakeElement setValue:parentElement forAttribute:NSAccessibilityParentAttribute error:NULL];
	STAssertEqualObjects([object.parent accessibleUIElement], parentElement, @"Accessible UI Element object should be parentElement");
}

@end
