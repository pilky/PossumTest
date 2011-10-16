//
//  POSTabView.h
//  PossumTest
//
//  Created by Martin Pilkington on 16/10/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POSUIElement.h"

@interface POSTabView : POSUIElement 

- (NSString *)nameOfTabAtIndex:(NSInteger)aIndex;
- (NSUInteger)numberOfTabs;
- (void)selectTabAtIndex:(NSInteger)aIndex; //select tab and then press

@end
