//
//  POSObject.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class M3AccessibleUIElement;

@interface POSObject : NSObject 

- (id)initWithAccessibleUIElement:(M3AccessibleUIElement *)aElement;

@property (readonly, strong) M3AccessibleUIElement *accessibleUIElement;

@property (readonly) NSArray *children;
@property (readonly) NSSize size;
@property (readonly) NSPoint positionOnScreen;
@property (readonly) POSObject *parent;

@end
