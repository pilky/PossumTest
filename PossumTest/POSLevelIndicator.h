//
//  POSLevelIndicator.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSUIElement.h"

@interface POSLevelIndicator : POSUIElement 

@property (assign, getter=isFocused) BOOL focused;
@property (readonly, getter=isEditable) BOOL editable;

@property (readonly, getter=isDiscrete) BOOL discrete; //alowed values is > 0
@property (assign) CGFloat value;
@property (readonly) CGFloat minValue;
@property (readonly) CGFloat maxValue;
@property (readonly) CGFloat warningValue;
@property (readonly) CGFloat criticalValue;

@end
