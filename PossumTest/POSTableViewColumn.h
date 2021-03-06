//
//  POSTableViewColumn.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSObject.h"

@class POSTableViewColumnHeader;
@interface POSTableViewColumn : POSObject 

@property (readonly) POSTableViewColumnHeader *header;
- (id)cellAtRowIndex:(NSUInteger)aIndex;
- (void)setWidth:(CGFloat)aWidth;
@property (readonly) NSInteger columnIndex;

@end
