//
//  POSRadioGroup.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSControl.h"

@interface POSRadioGroup : POSControl 

@property (assign, getter=isFocused) BOOL focused;

@property (readonly) NSInteger selectedButtonIndex;
- (void)selectButtonAtIndex:(NSInteger)aIndex;

@end
