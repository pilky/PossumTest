//
//  POSProgressIndicator.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSUIElement.h"

typedef enum {
	POSProgressIndicatorTypeNormal = 0,
	POSProgressIndicatorTypeIndeterminate = 1
} POSProgressIndicatorType;

@interface POSProgressIndicator : POSUIElement 

@property (readonly) POSProgressIndicatorType type;
@property (readonly) NSInteger value;
@property (readonly) NSInteger minValue;
@property (readonly) NSInteger maxValue;

@end
