//
//  POSOutlineViewRow.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSOutlineViewRow.h"

@implementation POSOutlineViewRow

- (id)init {
	if ((self = [super init])) {
		// Initialization code here.
	}
	return self;
}


- (BOOL)isDisclosed {
	return NO;

}


- (void)setDisclosed:(BOOL)aDisclosed {

}


- (NSArray *)disclosedRows {
	return nil;

}


- (NSUInteger)disclosureLevel {
	return 0;

}


- (POSOutlineViewRow *)parentRow {
	return nil;

}


@end
