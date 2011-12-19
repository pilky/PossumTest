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

static NSDictionary *classRoleMap = nil;

@interface POSObject () 

- (id)initWithAccessibleUIElement:(M3AccessibleUIElement *)aElement skipChecks:(BOOL)aSkipChecks;
- (Class)_classForElement:(M3AccessibleUIElement *)aElement;

@end



@implementation POSObject

@synthesize accessibleUIElement;

+ (NSString *)classRole {
	return nil;
}

//*****//
- (id)initWithAccessibleUIElement:(M3AccessibleUIElement *)aElement {
	return [self initWithAccessibleUIElement:aElement skipChecks:NO];
}

//*****//
- (id)initWithAccessibleUIElement:(M3AccessibleUIElement *)aElement skipChecks:(BOOL)aSkipChecks {
	if (!aSkipChecks) {
		NSString *role = [aElement valueForAttribute:NSAccessibilityRoleAttribute error:NULL];
		NSString *classRole = [[self class] classRole];
		//If we do have a role but it doesn't match the role for the class we are
		if (![classRole isEqualToString:role]) {
			self = [[[self _classForElement:aElement] alloc] initWithAccessibleUIElement:aElement skipChecks:YES];
		}
	}
	
	if (self != nil) {
		accessibleUIElement = aElement;
	}
	return self;
}

//*****//
- (Class)_classForElement:(M3AccessibleUIElement *)aElement {
	//Generate the basic class map
	if (!classRoleMap) {
		classRoleMap = [NSDictionary dictionaryWithObjectsAndKeys:NSClassFromString(@"POSWindow"), NSAccessibilityWindowRole,
							NSClassFromString(@"POSToolbar"), NSAccessibilityToolbarRole,
							NSClassFromString(@"POSComboBox"), NSAccessibilityComboBoxRole,
							NSClassFromString(@"POSPopUpButton"), NSAccessibilityPopUpButtonRole,
							NSClassFromString(@"POSSlider"), NSAccessibilitySliderRole,
							NSClassFromString(@"POSTableView"), NSAccessibilityTableRole,
							NSClassFromString(@"POSOutlineView"), NSAccessibilityOutlineRole,
							NSClassFromString(@"POSTableViewColumn"), NSAccessibilityColumnRole,
							NSClassFromString(@"POSLevelIndicator"), NSAccessibilityLevelIndicatorRole,
							NSClassFromString(@"POSProgressIndicator"), NSAccessibilityProgressIndicatorRole,
							NSClassFromString(@"POSTextArea"), NSAccessibilityTextAreaRole,
							NSClassFromString(@"POSTabView"), NSAccessibilityTabGroupRole, 
							NSClassFromString(@"POSMenuBar"), NSAccessibilityMenuBarRole,
							NSClassFromString(@"POSMenuBarItem"), NSAccessibilityMenuButtonRole,
							NSClassFromString(@"POSMenu"), NSAccessibilityMenuRole,
							NSClassFromString(@"POSMenuItem"), NSAccessibilityMenuItemRole, nil];
	}
	
	//See if we can match against the map
	NSString *role = [aElement valueForAttribute:NSAccessibilityRoleAttribute error:NULL];
	Class returnClass = [classRoleMap objectForKey:role];
	if (returnClass)
		return returnClass;
	
	//If not then we're dealing with something that needs a subrole
	NSString *subrole = [aElement valueForAttribute:NSAccessibilitySubroleAttribute error:NULL];
	if ([role isEqualToString:NSAccessibilityButtonRole]) {
		if (!subrole)
			return NSClassFromString(@"POSButton");
		if ([subrole isEqualToString:NSAccessibilitySortButtonSubrole])
			return NSClassFromString(@"POSTableViewColumnHeader");
	}
	if ([role isEqualToString:NSAccessibilityTextFieldRole]) {
		if (!subrole)
			return NSClassFromString(@"POSTextField");
		if ([subrole isEqualToString:NSAccessibilitySearchFieldSubrole])
			return NSClassFromString(@"POSSearchField");
	}
	if ([role isEqualToString:NSAccessibilityRowRole]) {
		if ([subrole isEqualToString:NSAccessibilityTableRowSubrole])
			return NSClassFromString(@"POSTableViewRow");
		if ([subrole isEqualToString:NSAccessibilityOutlineRowSubrole])
			return NSClassFromString(@"POSOutlineViewRow");
	}
	return [POSObject class];
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
- (id)parent {
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