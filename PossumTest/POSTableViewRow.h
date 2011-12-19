//
//  POSTableViewRow.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSObject.h"

@interface POSTableViewRow : POSObject 

@property (readonly) NSInteger rowIndex;
@property (assign, getter=isSelected) BOOL selected;
- (id)cellAtIndex:(NSUInteger)aIndex;
- (id)cellForColumnWithIdentifier:(NSString *)aIdentifier;

@end
