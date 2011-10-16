//
//  PossumTest.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright (c) 2011 M Cubed Software. All rights reserved.
//

/*
Launch app
 ---
 -[NSWorkspace launchApplicationAtURL:options:configuration:error]
 
 options:
 - NSWorkspaceLaunchNewInstance
 
 configuration:
 - NSWorkspaceLaunchConfigurationEnvironment (add environment variable to show possum is working)
 - NSWorkspaceLaunchWithoutActivation (keep it in the background)
 
 Application
 ---
 processIdentifier
- [NSRunningApplication activateWithOptions:]
 NSApplicationActivateAllWindows
 NSApplicationActivateIgnoringOtherApps
*/

#import "POSTest.h"
#import "POSApplication.h"
#import "POSUIElementProtocol.h"
#import "POSUIElement.h"
#import "POSWindow.h"
#import "POSMenuBar.h"
#import "POSMenuBarItem.h"
#import "POSMenu.h"
#import "POSMenuItem.h"
#import "POSControl.h"
#import "POSButton.h"
#import "POSCheckbox.h"
#import "POSRadioGroup.h"
#import "POSTextField.h"
#import "POSSearchField.h"
#import "POSComboBox.h"
#import "POSSlider.h"
#import "POSTableView.h"
#import "POSTableViewColumnHeader.h"
#import "POSTableViewColumn.h"
#import "POSTableViewRow.h"
#import "POSOutlineView.h"
#import "POSOutlineViewRow.h"
#import "POSToolbar.h"
#import "POSLevelIndicator.h"
#import "POSProgressIndicator.h"
#import "POSTextArea.h"
#import "POSTabView.h"


/*
Not yet supported

 NSDatePicker
 NSScrollView
 Relevancy Indidcator
 Colour Well
 Image View
 Path control
 Stepper
 Split View
 Rule Editor

*/