//
//  POSTextField.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSTextField.h"

@implementation POSTextField

- (id)init {
	if ((self = [super init])) {
		// Initialization code here.
	}
	return self;
}


- (BOOL)isFocused {
	return NO;

}


- (void)setFocused:(BOOL)aFocused {

}


- (POSTextFieldType)type {
	POSTextFieldType result;
	return result;

}


- (NSString *)text {
	return nil;

}


- (void)setText:(NSString *)aText {

}


- (NSString *)selectedText {
	return nil;

}


- (void)setSelectedText:(NSString *)aSelectedText {

}


- (NSRange)selectedTextRange {
	NSRange result;
	return result;

}


- (void)setSelectedTextRange:(NSRange)aSelectedTextRange {

}


- (void)showMenu {

}


- (void)confirmEditing {

}


@end
