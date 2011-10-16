//
//  POSMenuItem.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class POSObject;
@interface POSMenuItem : NSObject 

@property (readonly) POSObject *parent;
@property (readonly, getter = isEnabled) BOOL enabled;
@property (assign, getter = isSelected) BOOL selected;
@property (readonly) NSString *title;
@property (readonly) char keyEquivalent;
@property (readonly) NSUInteger keyEquivalentModifierMask;

- (void)press;
- (void)cancel;

@end
