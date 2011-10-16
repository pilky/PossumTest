//
//  POSElementProtocol.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol POSUIElement <NSObject>

@property (assign, getter=isFocused) BOOL focused;
@property (readonly) NSPoint positionInWindow;
@property (readonly) NSString *identifier;

@end
