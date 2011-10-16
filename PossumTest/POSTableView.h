//
//  POSTableView.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSControl.h"

@interface POSTableView : POSControl 

@property (assign, getter=isFocused) BOOL focused;

@property (readonly) NSArray *columnHeaders;
@property (readonly) NSArray *selectedRows;
- (void)selectRowsAtIndexes:(NSIndexSet *)aIndexSet;
@property (readonly) NSArray *rows;
@property (readonly) NSArray *columns;

@end
