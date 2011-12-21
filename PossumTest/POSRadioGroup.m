//
//  POSRadioGroup.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSRadioGroup.h"

@implementation POSRadioGroup

- (void)setFocused:(BOOL)aFocused {
	[self setValue:[NSNumber numberWithBool:aFocused] forAttribute:NSAccessibilityFocusedAttribute];
}


- (NSInteger)selectedButtonIndex {
	//Get children
	//Find index with value YES
	return 0;
}


- (void)selectButtonAtIndex:(NSInteger)aIndex {
	//Get the child at the supplied index
	//press it
}

@end
