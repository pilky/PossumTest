//
//  POSTableViewRow.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSTableViewRow.h"

@implementation POSTableViewRow

- (id)init {
	if ((self = [super init])) {
		// Initialization code here.
	}
	return self;
}


- (NSInteger)rowIndex {
	return 0;

}


- (BOOL)isSelected {
	return NO;

}


- (void)setSelected:(BOOL)aSelected {

}


- (id)cellAtIndex:(NSUInteger)aIndex {
	return nil;

}


- (id)cellForColumnWithIdentifier:(NSString *)aIdentifier {
	return nil;

}

@end
