//
//  POSTableViewColumn.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSTableViewColumn.h"

@implementation POSTableViewColumn

- (id)init {
	if ((self = [super init])) {
		// Initialization code here.
	}
	return self;
}


- (POSTableViewColumnHeader *)header {
	return nil;

}


- (id)cellAtRowIndex:(NSUInteger)aIndex {
	return nil;

}


- (void)setWidth:(CGFloat)aWidth {

}


- (NSInteger)columnIndex {
	return 0;

}

@end
