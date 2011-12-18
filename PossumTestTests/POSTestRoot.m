//
//  POSTestRoot.m
//  PossumTest
//
//  Created by Martin Pilkington on 18/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSTestRoot.h"
#import "POSObject.h"

@implementation POSTestRoot

@synthesize mockElement;

- (void)setUp {
	[super setUp];
	mockElement = [OCMockObject mockForClass:[M3AccessibleUIElement class]];
}

@end
