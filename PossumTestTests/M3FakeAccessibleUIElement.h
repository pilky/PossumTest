//
//  M3FakeAccessibleUIElement.h
//  PossumTest
//
//  Created by Martin Pilkington on 19/12/2011.
//  Copyright 2011 M Cubed Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PossumTest/M3AccessibleUIElement.h>

@interface M3FakeAccessibleUIElement : M3AccessibleUIElement 

- (id)initWithRole:(NSString *)aRole subrole:(NSString *)aSubrole;
@property (strong) NSError *error;
@property (readonly, strong) NSString *lastPerformedAction;

@end
