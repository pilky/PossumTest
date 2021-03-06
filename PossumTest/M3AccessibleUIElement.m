/*****************************************************************
 M3AccessibleUIElement.m
 M3Extensions
 
 Created by Martin Pilkington on 03/11/2009.
 
 Copyright (c) 2006-2010 M Cubed Software
 
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
 
 *****************************************************************/

#import "M3AccessibleUIElement.h"
#import "M3AccessibilityController.h"

@interface M3AccessibleUIElement ()

- (id)sanitiseValue:(id)value;

@end


@implementation M3AccessibleUIElement 

@synthesize element, accessibilityController;

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)initWithElement:(AXUIElementRef)newElement accessibilityController:(M3AccessibilityController *)aController {
	if ((self = [super init])) {
		element = CFRetain(newElement);
		accessibilityController = aController;
	}
	return self;
}

- (void)dealloc {
	if (element) CFRelease(element);
}

- (void)finalize {
	if (element) CFRelease(element);
	[super finalize];
}

/**
 Returns the description for a supplied action
 */
- (NSString *)descriptionForAction:(NSString *)action error:(NSError **)error {
	CFStringRef description = nil;
	AXError errorCode = AXUIElementCopyActionDescription (element, (__bridge_retained CFStringRef)action, &description);
	NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
	if (error != NULL && returnError)
		*error = returnError;
	return returnError != nil ? (__bridge_transfer NSString *)description : nil;
}

/**
 Returns an array of the action names
 */
- (NSArray *)actionNamesAndError:(NSError **)error {
	CFArrayRef names = nil;
	AXError errorCode = AXUIElementCopyActionNames(element, &names);
	NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
	if (error != NULL && returnError)
		*error = returnError;
	return (__bridge_transfer NSArray *)names;
}

/**
 Returns an array of the attribute names;
 */
- (NSArray *)attributeNamesAndError:(NSError **)error {
	CFArrayRef names = nil;
	AXError errorCode = AXUIElementCopyAttributeNames(element, &names);
	NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
	if (error != NULL && returnError)
		*error = returnError;
	return (__bridge_transfer NSArray *)names;
}

/**
 Returns the value for a supplied attribute
 */
- (id)valueForAttribute:(NSString *)attribute error:(NSError **)error {
	CFTypeRef value = nil;
	if ([[self attributeNamesAndError:NULL] containsObject:attribute]) {
		AXError errorCode = AXUIElementCopyAttributeValue(element, (__bridge_retained CFStringRef)attribute, &value);
		NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
		if (error != NULL && returnError)
			*error = returnError;
	}
	
	return [self sanitiseValue:(__bridge_transfer id)value];
}

- (id)valuesForAttribute:(NSString *)attribute inRange:(NSRange)range error:(NSError **)error {
	CFArrayRef values = nil;
	AXError errorCode = AXUIElementCopyAttributeValues(element, (__bridge_retained CFStringRef)attribute, range.location, range.length, &values);
	NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
	if (error != NULL && returnError)
		*error = returnError;
	return [self sanitiseValue:(__bridge_transfer id)values];
}

/**
 Defines if an attribute is settable
 */
- (BOOL)isAttributeSettable:(NSString *)attribute error:(NSError **)error {
	Boolean settable;
	AXError errorCode = AXUIElementIsAttributeSettable(element, (__bridge_retained CFStringRef)attribute, &settable);
	NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
	if (error != NULL && returnError)
		*error = returnError;
	return (BOOL)settable;
}

/**
 Performs the supplied action
 */
- (BOOL)performAction:(NSString *)action error:(NSError **)error {
	AXError errorCode = AXUIElementPerformAction(element, (__bridge_retained CFStringRef)action);
	NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
	if (error != NULL && returnError) {
		*error = returnError;
		return NO;
	}
	return YES;
}

/**
 Posts a keyboard event
 */
- (BOOL)postKeyboardEventWithKeyCharacter:(CGCharCode)keyChar virtualKey:(CGKeyCode)virtualKey keyDown:(BOOL)keyDown error:(NSError **)error {
	AXError errorCode = AXUIElementPostKeyboardEvent(element, keyChar, virtualKey, (Boolean)keyDown);
	NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
	if (error != NULL && returnError) {
		*error = returnError;
		return NO;
	}
	return YES;
}

/**
 Sets the value of the supplied attribute
 */
- (BOOL)setValue:(id)value forAttribute:(NSString *)attribute error:(NSError **)error {
	AXError errorCode = AXUIElementSetAttributeValue(element, (__bridge_retained CFStringRef)attribute, (__bridge_retained CFTypeRef)value);
	NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
	if (error != NULL && returnError) {
		*error = returnError;
		return NO;
	}
	return YES;
}





/**
 Santises the output, putting it into appropriate objects
 */
- (id)sanitiseValue:(id)value {
	if (!value)
		return nil;
	AXValueRef valueRef = (__bridge_retained AXValueRef)value;
	if (AXValueGetType(valueRef) != kAXValueIllegalType) {
		CGPoint rawValue;
		AXValueGetValue(valueRef, AXValueGetType(valueRef), &rawValue);
		switch (AXValueGetType(valueRef)) {
			case kAXValueCGPointType: {
				CGPoint rawValue;
				AXValueGetValue(valueRef, kAXValueCGPointType, &rawValue);
				return [NSValue valueWithPoint:rawValue];
			}
			case kAXValueCGSizeType: {
				CGSize rawValue;
				AXValueGetValue(valueRef, kAXValueCGSizeType, &rawValue);
				return [NSValue valueWithSize:rawValue];
			}
			case kAXValueCGRectType: {
				CGRect rawValue;
				AXValueGetValue(valueRef, kAXValueCGRectType, &rawValue);
				return [NSValue valueWithRect:rawValue];
			}
			case kAXValueCFRangeType: {
				NSRange rawValue;
				AXValueGetValue(valueRef, kAXValueCFRangeType, &rawValue);
				return [NSValue valueWithRange:rawValue];
			}
			default: {}
		}
	}
	if ([value isKindOfClass:[NSArray class]]) {
		NSMutableArray *array = [NSMutableArray array];
		for (id subvalue in value) {
			[array addObject:[self sanitiseValue:subvalue]];
		}
		return [array copy];
	} else if ([[value description] rangeOfString:@"AXUIElement"].location != NSNotFound) {
		return [[M3AccessibleUIElement alloc] initWithElement:(__bridge_retained AXUIElementRef)value 
									  accessibilityController:self.accessibilityController];
	}
	return value;
}


- (NSString *)description {
	NSString *role = [self valueForAttribute:@"AXRole" error:nil];
	id value = [self valueForAttribute:@"AXValue" error:nil];
	if (value) {
		return [NSString stringWithFormat:@"%@ (%@)", role, value];
	}
	return role;
}


/**
 Return the process ID for the element
 */
- (pid_t)processIDAndError:(NSError **)error {
	pid_t pid = 0;
	AXError errorCode = AXUIElementGetPid(element, &pid);
	NSError *returnError = [self.accessibilityController errorForCode:(NSInteger)errorCode];
	if (error != NULL && returnError)
		*error = returnError;
	
	return pid;
}

/**
 Test equality
 */
- (BOOL)isEqual:(id)object {
	if (![[self valueForAttribute:(NSString *)kAXRoleAttribute error:NULL] isEqualToString:[object valueForAttribute:(NSString *)kAXRoleAttribute error:NULL]]) {
		return NO;
	}
	NSString *subroleSelf = [self valueForAttribute:(NSString *)kAXSubroleAttribute error:NULL];
	NSString *subroleObject = [object valueForAttribute:(NSString *)kAXSubroleAttribute error:NULL];
	if (![subroleSelf isEqualToString:subroleObject] && subroleSelf && subroleObject) {
		return NO;
	}
	
	NSString *titleSelf = [self valueForAttribute:(NSString *)kAXTitleAttribute error:NULL];
	NSString *titleObject = [object valueForAttribute:(NSString *)kAXTitleAttribute error:NULL];
	if (![titleSelf isEqualToString:titleObject] && titleSelf && titleObject) {
		return NO;
	}
	
	id valueSelf = [self valueForAttribute:(NSString *)kAXValueAttribute error:NULL];
	id valueObject = [object valueForAttribute:(NSString *)kAXValueAttribute error:NULL];
	if (![valueSelf isEqual:valueObject] && valueSelf && valueObject) {
		return NO;
	}

	if (!NSEqualPoints([[self valueForAttribute:(NSString *)kAXPositionAttribute error:NULL] pointValue], [[object valueForAttribute:(NSString *)kAXPositionAttribute error:NULL] pointValue])) {
		return NO;
	}
	return YES;
}

@end
