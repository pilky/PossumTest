//
//  M3FakeAccessibleUIElement.m
//  PossumTest
//
//  Created by Martin Pilkington on 19/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "M3FakeAccessibleUIElement.h"

@implementation M3FakeAccessibleUIElement {
	NSMutableDictionary *attributes;
}

@synthesize error, lastPerformedAction;

- (id)initWithRole:(NSString *)aRole subrole:(NSString *)aSubrole {
	if ((self = [super init])) {
		attributes = [NSMutableDictionary dictionary];
		[attributes setObject:aRole forKey:NSAccessibilityRoleAttribute];
		if ([aSubrole length]) {
			[attributes setObject:aSubrole forKey:NSAccessibilitySubroleAttribute];
		}
	}
	return self;
}

- (id)valueForAttribute:(NSString *)attribute error:(NSError **)aError {
	if (error && aError != NULL) {
		*aError = error;
		return nil;
	}
	return [attributes objectForKey:attribute];
}

- (BOOL)setValue:(id)value forAttribute:(NSString *)attribute error:(NSError **)aError {
	if (error && aError != NULL) {
		*aError = error;
		return NO;
	}
	if (value) {
		[attributes setObject:value forKey:attribute];
	} else {
		[attributes removeObjectForKey:attribute];
	}
	return YES;
}

- (BOOL)performAction:(NSString *)aAction error:(NSError **)aError {
	if (error && aError != NULL) {
		*aError = error;
		return NO;
	}
	
	lastPerformedAction = aAction;
	return YES;
}

@end
