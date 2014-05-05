//
//  ARGameBoard.h
//  ConnectFour
//
//  Created by Anton Rivera on 5/5/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ARGamePiece;
@class ARGameBoardColumn;

@interface ARGameBoard : NSObject

@property (nonatomic, strong) NSArray *pieces;
@property (nonatomic, strong) NSArray *players;
@property (nonatomic, strong) ARGameBoardColumn *column;
@property (nonatomic, strong) NSArray *arrayOfColumns;
@property (nonatomic, strong) NSArray *slots;

- (instancetype)initWithPlayers;
- (void)playPiece:(ARGamePiece *)gamePiece atIndex:(NSIndexPath *)indexPath;

@end
