//
//  POSObject.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class M3AccessibleUIElement;

/***************************
 The base class for all UI objects
 @since PossumTest 1.0 or later
 **************************/
@interface POSObject : NSObject 

+ (NSString *)classRole;

/***************************
 Creates a new object with the supplied accessible element
 @param aElement The accessibility element representing the UI object
 @return A newly initialised object
 @since PossumTest 1.0 or later
 **************************/
- (id)initWithAccessibleUIElement:(M3AccessibleUIElement *)aElement;
- (id)initWithAccessibleUIElement:(M3AccessibleUIElement *)aElement skipChecks:(BOOL)aSkipChecks;

/***************************
 The accessibility element for the object
 @since PossumTest 1.0 or later
 **************************/
@property (readonly, strong) M3AccessibleUIElement *accessibleUIElement;

/***************************
 An array of POSObjects representing the children of the element
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) NSArray *children;

/***************************
 The size of the UI object on screen
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) NSSize size;

/***************************
 The position of the UI object on screen
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) NSPoint positionOnScreen;

/***************************
 The parent of the UI Object
 @since PossumTest 1.0 or later
 **************************/
@property (readonly) id parent;


///-----------------------------------------------------
/// @name Helper methods
///-----------------------------------------------------

/***************************
 Returns the value for the supplied attribute
 
 Most properties will route through this as it performs additional error handling. Calls -[POSTest assertError:] if no value is returned.
 @param aAttribute The accessibility attribute to get
 @return The desired attribute value
 @since PossumTest 1.0 or later
 **************************/
- (id)valueForAttribute:(NSString *)aAttribute;

/***************************
 Sets the value and attribute
 @param aValue The value to set
 @param aAttribute The attribute to set it on
 @since PossumTest 1.0 or later
 **************************/
- (void)setValue:(id)aValue forAttribute:(NSString *)aAttribute;

/***************************
 Perform an action on the object
 @param aAction The action to perform
 @since PossumTest 1.0 or later
 **************************/
- (void)performAction:(NSString *)aAction;

@end
