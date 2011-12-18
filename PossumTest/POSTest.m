//
//  POSTest.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSTest.h"

NSString *POSAssertionFailureException = @"POSAssertionFailureException";
NSString *POSAssertionErrorKey = @"POSAssertionErrorKey";

@implementation POSTest

+ (BOOL)waitUntilTrue:(BOOL (^)(void))aTest timeout:(NSUInteger)aSeconds {
	return NO;
}

+ (void)assertTrue:(BOOL)aTest failureMessage:(NSString *)aMessage, ... {
	
}

+ (void)assertObject:(id)aObj isEqualToObject:(id)aObj2 failureMessage:(NSString *)aMessage, ... {
	
}

+ (void)assertError:(NSError *)aError {
	if (aError) {
		NSString *reason = [NSString stringWithFormat:@"Assertion failed with NSError '%@'", [aError localizedDescription]];
		NSDictionary *userInfo = [NSDictionary dictionaryWithObject:aError forKey:POSAssertionErrorKey];
		@throw [NSException exceptionWithName:POSAssertionFailureException reason:reason userInfo:userInfo];
	}
}

+ (void)takeScreenshot {
	
}

+ (void)takeScreenshotWithName:(NSString *)aName {
	
}

+ (void)logMessage:(NSString *)aMessage, ... {
	
}

@end
