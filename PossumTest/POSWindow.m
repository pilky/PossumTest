//
//  POSWindow.m
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSWindow.h"

@implementation POSWindow

- (id)init {
	if ((self = [super init])) {
		// Initialization code here.
	}
	return self;
}


- (NSString *)title {
	return nil;

}


- (NSString *)identifier {
	return nil;

}


- (NSURL *)documentURL {
	return nil;

}


- (BOOL)isFocused {
	return NO;

}


- (BOOL)isModal {
	return NO;

}


- (BOOL)isMainWindow {
	return NO;

}


- (void)setMainWindow:(BOOL)aMainWindow {

}


- (BOOL)isMinimised {
	return NO;

}


- (void)setMinimised:(BOOL)aMinimised {

}


- (BOOL)isFullScreen {
	return NO;

}


- (void)setFullScreen:(BOOL)aFullScreen {

}


- (NSPoint)positionOnScreen {
	NSPoint result;
	return result;

}


- (void)setPositionOnScreen:(NSPoint)aPositionOnScreen {

}


- (POSButton *)closeButton {
	return nil;

}


- (POSButton *)minimiseButton {
	return nil;

}


- (POSButton *)zoomButton {
	return nil;

}


- (POSButton *)toolbarButton {
	return nil;

}


- (POSButton *)fullScreenButton {
	return nil;

}


- (POSToolbar *)toolbar {
	return nil;

}


- (NSArray *)buttons {
	return nil;

}


- (POSButton *)buttonWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)checkboxes {
	return nil;

}


- (POSCheckbox *)checkboxWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)radioGroups {
	return nil;

}


- (POSRadioGroup *)radioGroupWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)textFields {
	return nil;

}


- (POSTextField *)textFieldWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)searchFields {
	return nil;

}


- (POSSearchField *)searchFieldWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)datePickers {
	return nil;

}


- (POSDatePicker *)datePickerWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)comboBoxes {
	return nil;

}


- (POSComboBox *)comboBoxWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)imageViews {
	return nil;

}


- (POSImageView *)imageViewWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)popupButtons {
	return nil;

}


- (POSPopUpButton *)popupWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)textAreas {
	return nil;

}


- (POSTextArea *)textAreaWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)tableViews {
	return nil;

}


- (POSTableView *)tableViewWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)outlineViews {
	return nil;

}


- (POSOutlineView *)outlineViewWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)tabViews {
	return nil;

}


- (POSTabView *)tabViewWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)sliders {
	return nil;

}


- (POSSlider *)sliderWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)steppers {
	return nil;

}


- (POSStepper *)stepperWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)progressIndicators {
	return nil;

}


- (POSProgressIndicator *)progressIndicatorWithIdentifier:(NSString *)aIdentifier {
	return nil;

}


- (NSArray *)levelIndicators {
	return nil;

}


- (POSLevelIndicator *)levelIndicatorWithIdentifier:(NSString *)aIdentifier {
	return nil;

}

@end
