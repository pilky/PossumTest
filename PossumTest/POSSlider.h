//
//  POSSlider.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSControl.h"

typedef enum {
	POSSliderTypeHorizontal = 0,
	POSSliderTypeVertical = 1,
	POSSLiderTypeRound = 2,
	POSSLiderTypeRating = 3
} POSSliderType;

@interface POSSlider : POSControl 

@property (readonly) POSSliderType type;

@property (assign) NSInteger value;
@property (readonly) NSInteger minValue;
@property (readonly) NSInteger maxValue;
- (void)increment;
- (void)decrement;

@end
