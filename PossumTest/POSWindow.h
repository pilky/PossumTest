//
//  POSWindow.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSObject.h"

@class POSButton, POSCheckbox, POSRadioGroup, POSTextField, POSSearchField, POSDatePicker, POSComboBox;
@class POSPopUpButton, POSTextArea, POSTableView, POSOutlineView, POSTabView, POSSlider, POSStepper;
@class POSLevelIndicator, POSToolbar, POSProgressIndicator;
@interface POSWindow : POSObject 

@property (readonly) NSString *title;
@property (readonly) NSString *identifier;
@property (readonly) NSURL *documentURL;
@property (readonly, getter = isFocused) BOOL focused;
@property (readonly, getter = isModal) BOOL modal;
@property (assign, getter = isMainWindow) BOOL mainWindow;
@property (assign, getter = isMinimised) BOOL minimised;
@property (assign, getter = isFullScreen) BOOL fullScreen;

@property (readonly) POSButton *closeButton;
@property (readonly) POSButton *minimiseButton;
@property (readonly) POSButton *zoomButton;
@property (readonly) POSButton *toolbarButton;
@property (readonly) POSButton *fullScreenButton;
@property (readonly) POSToolbar *toolbar;

@property (readonly) NSArray *buttons;
- (POSButton *)buttonWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *checkboxes;
- (POSCheckbox *)checkboxWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *radioGroups;
- (POSRadioGroup *)radioGroupWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *textFields;
- (POSTextField *)textFieldWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *searchFields;
- (POSSearchField *)searchFieldWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *datePickers;
- (POSDatePicker *)datePickerWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *comboBoxes;
- (POSComboBox *)comboBoxWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *popupButtons;
- (POSPopUpButton *)popupWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *textAreas;
- (POSTextArea *)textAreaWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *tableViews;
- (POSTableView *)tableViewWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *outlineViews;
- (POSOutlineView *)outlineViewWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *tabViews;
- (POSTabView *)tabViewWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *sliders;
- (POSSlider *)sliderWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *steppers;
- (POSStepper *)stepperWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *progressIndicators;
- (POSProgressIndicator *)progressIndicatorWithIdentifier:(NSString *)aIdentifier;

@property (readonly) NSArray *levelIndicators;
- (POSLevelIndicator *)levelIndicatorWithIdentifier:(NSString *)aIdentifier;

@end
