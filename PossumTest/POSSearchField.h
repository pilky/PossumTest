//
//  POSSearchField.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSTextField.h"

@class POSButton;
@interface POSSearchField : POSTextField 
 
@property (readonly) POSButton *searchButton;
@property (readonly) POSButton *clearButton;

@end
