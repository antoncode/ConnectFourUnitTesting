//
//  ARGameBoardColumn.h
//  ConnectFour
//
//  Created by Anton Rivera on 5/5/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ARGameBoardColumn : NSObject

@property (nonatomic, strong)NSMutableArray *arrayOfSlots;

- (instancetype)initWithSlots;

@end
