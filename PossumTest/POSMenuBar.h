//
//  POSMenuBar.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class POSApplication;
@interface POSMenuBar : NSObject

@property (readonly) NSArray *children;
@property (readonly) POSApplication *application;
@property (readonly, getter = isEnabled) BOOL enabled;

@end
