//
//  POSButton.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSControl.h"

typedef enum {
	POSButtonTypeNormal = 0,
	POSButtonTypeDisclosure = 1,
	POSButtonTypeCheckBox = 2,
	POSButtonTypeRadio = 3
} POSButtonType;


@interface POSButton : POSControl 

//children is nil

@property (assign, getter=isFocused) BOOL focused;

@property (readonly) NSString *title;
@property (readonly) POSButtonType type;
@property (readonly) NSInteger value;
- (void)press;

@end
