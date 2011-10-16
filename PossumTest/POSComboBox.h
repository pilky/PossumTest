//
//  POSComboBox.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSTextField.h"

@interface POSComboBox : POSTextField 

@property (assign, getter=isExpanded) BOOL expanded;
@property (readonly) NSArray *expandedValues;

@end
