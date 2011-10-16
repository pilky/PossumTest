//
//  POSOutlineViewRow.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSTableViewRow.h"

@interface POSOutlineViewRow : POSTableViewRow 

@property (assign, getter=isDisclosed) BOOL disclosed;
@property (readonly) NSArray *disclosedRows;
@property (readonly) NSUInteger disclosureLevel;
@property (readonly) POSOutlineViewRow *parentRow;

@end
