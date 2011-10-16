//
//  POSTextArea.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSUIElement.h"

@interface POSTextArea : POSUIElement 

@property (assign, getter=isFocused) BOOL focused;

@property (retain) NSString *text;
@property (retain) NSString *selectedText;
@property (retain) NSArray *selectedTextRanges;
@property (assign) NSRange selectedTextRange;
- (void)showMenu;

@end
