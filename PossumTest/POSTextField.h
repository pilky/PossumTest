//
//  POSTextField.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSControl.h"

typedef enum {
	POSTextFieldTypeNormal = 0,
	POSTextFieldTypeSecure = 1,
	POSTextFieldTypeSearch = 2,
	POSTextFieldTypeToken = 3, //If value length = 0 && number of characters > 0 && has children
	POSTextFieldTypeCombo = 4
} POSTextFieldType;

@interface POSTextField : POSControl 

@property (assign, getter=isFocused) BOOL focused;


@property (readonly) POSTextFieldType type;
@property (copy) NSString *text; //If secure this is nil

//The focused property must be YES in order for you to edit these attribute
@property (copy) NSString *selectedText;
@property (assign) NSRange selectedTextRange;


- (void)showMenu;
- (void)confirmEditing;

@end
