//
//  POSButton.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSButton.h"

@implementation POSButton

- (id)init {
	if ((self = [super init])) {
		// Initialization code here.
	}
	return self;
}


- (BOOL)isFocused {
	return NO;

}


- (void)setFocused:(BOOL)aFocused {

}


- (NSString *)title {
	return nil;

}


- (POSButtonType)type {
	POSButtonType result;
	return result;

}


- (NSInteger)value {
	return 0;

}


- (void)press {

}

@end
