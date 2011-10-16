//
//  POSElementProtocol.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class POSWindow;
@protocol POSUIElement <NSObject>

@property (readonly, getter=isFocused) BOOL focused;
@property (readonly) NSPoint positionInWindow;
@property (readonly) POSWindow *window;

@end
