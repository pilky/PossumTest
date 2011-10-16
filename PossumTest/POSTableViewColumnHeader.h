//
//  POSTableViewColumnHeader.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSControl.h"

typedef enum {
	POSSortDirectionAscending = 0,
	POSSortDirectionDescending = 1,
	POSSortDirectionUnknown = 2
} POSSortDirection;

@interface POSTableViewColumnHeader : POSControl 

@property (readonly) NSString *title;
@property (readonly) POSSortDirection sortDirection;
- (void)press;

@end
