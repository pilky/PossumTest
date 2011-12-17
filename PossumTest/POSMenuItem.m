//
//  POSMenuItem.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSMenuItem.h"

@implementation POSMenuItem

- (id)init {
	if ((self = [super init])) {
		// Initialization code here.
	}
	return self;
}


- (POSObject *)parent {
	return nil;

}


- (BOOL)isEnabled {
	return NO;

}


- (BOOL)isSelected {
	return NO;

}


- (void)setSelected:(BOOL)aSelected {

}


- (NSString *)title {
	return nil;

}


- (char)keyEquivalent {
	return 0;

}


- (NSUInteger)keyEquivalentModifierMask {
	return 0;

}


- (void)press {

}


- (void)cancel {

}

@end
