//
//  POSTest.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface POSTest : NSObject 

+ (BOOL)waitUntilTrue:(BOOL (^)(void))aTest timeout:(NSUInteger)aSeconds;

+ (void)assertTrue:(BOOL)aTest failureMessage:(NSString *)aMessage, ...;
+ (void)assertObject:(id)aObj isEqualToObject:(id)aObj2 failureMessage:(NSString *)aMessage, ...;

+ (void)takeScreenshot;
+ (void)takeScreenshotWithName:(NSString *)aName;

+ (void)logMessage:(NSString *)aMessage, ...;


@end
