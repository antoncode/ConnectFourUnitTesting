//
//  ARGameBoardColumn.m
//  ConnectFour
//
//  Created by Anton Rivera on 5/5/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "ARGameBoardColumn.h"
#import "ARGameBoardSlots.h"

@implementation ARGameBoardColumn

- (instancetype)initWithSlots
{
    self = [super init];
    
    if (self) {
        NSMutableArray *tempSlotsArray = [NSMutableArray new];
        
        for (NSInteger i=0; i<6; i++) {
            ARGameBoardSlots *slot = [ARGameBoardSlots new];
            [tempSlotsArray addObject:slot];
        }
        _arrayOfSlots = tempSlotsArray;
    }
    
    return self;
}

@end
