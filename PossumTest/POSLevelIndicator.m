//
//  POSLevelIndicator.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSLevelIndicator.h"

@implementation POSLevelIndicator

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


- (BOOL)isEditable {
	return NO;

}


- (BOOL)isDiscrete {
	return NO;

}


- (CGFloat)value {
	return 0;

}


- (void)setValue:(CGFloat)aValue {

}


- (CGFloat)minValue {
	return 0;

}


- (CGFloat)maxValue {
	return 0;

}


- (CGFloat)warningValue {
	return 0;

}


- (CGFloat)criticalValue {
	return 0;

}

@end
