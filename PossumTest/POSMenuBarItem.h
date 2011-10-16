//
//  POSMenuBarItem.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class POSMenuBar;
@interface POSMenuBarItem : NSObject

@property (readonly) NSString *title;
@property (readonly) POSMenuBar *menuBar;
@property (assign, getter=isSelected) BOOL selected;
@property (readonly, getter=isEnabled) BOOL enabled;

- (void)press;
- (void)cancel;

@end
