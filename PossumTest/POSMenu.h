//
//  POSMenu.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class POSObject;
@interface POSMenu : NSObject

@property (readonly, getter = isEnabled) BOOL enabled;
@property (readonly) NSArray *children;
@property (readonly) POSObject *parent;

- (void)press;
- (void)cancel;


@end
