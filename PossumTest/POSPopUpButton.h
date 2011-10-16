//
//  POSPopUpButton.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import "POSControl.h"

@interface POSPopUpButton : POSControl 

@property (readonly) NSString *value;
- (void)selectItemWithTitle:(NSString *)aTitle;
- (void)selectItemAtIndex:(NSInteger)aIndex;

- (void)press;
- (void)cancel;

@end
