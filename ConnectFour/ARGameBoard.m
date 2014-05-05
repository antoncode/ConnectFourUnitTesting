//
//  ARGameBoard.m
//  ConnectFour
//
//  Created by Anton Rivera on 5/5/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "ARGameBoard.h"
#import "ARPlayer.h"
#import "ARGamePiece.h"
#import "ARGameBoardColumn.h"

@interface ARGameBoard ()

@property (strong, nonatomic) ARPlayer *firstPlayer;
@property (strong, nonatomic) ARPlayer *secondPlayer;

@end

@implementation ARGameBoard

- (instancetype)initWithPlayers
{
    if (self = [super init]) {
        _firstPlayer = [[ARPlayer alloc] initWithColor:[UIColor redColor] andPieceCount:21];
        _secondPlayer = [[ARPlayer alloc] initWithColor:[UIColor blackColor] andPieceCount:21];
        _players = [NSArray arrayWithObjects:_firstPlayer, _secondPlayer, nil];
        
        NSMutableArray *tempPieces = [NSMutableArray new];
        
        for (ARPlayer *player in _players) {
            [tempPieces addObjectsFromArray:player.pieces];
        }

        _pieces = tempPieces;
    }
    
    [self createColumns];
    [self startNewGame];
    
    return self;
}

- (void)createColumns
{
    NSMutableArray *tempColumns = [NSMutableArray new];

    for (NSInteger i=0; i<7; i++) {
        ARGameBoardColumn *column = [[ARGameBoardColumn alloc] initWithSlots];
        [tempColumns addObject:column];
    }
    _arrayOfColumns = tempColumns;
}

- (void)startNewGame
{
    _firstPlayer.isCurrentTurn = YES;
    _secondPlayer.isCurrentTurn = NO;
}

- (void)playerPlaysPieceInColumn
{
    if (_firstPlayer) {
        
    }
}

- (void)playPiece:(ARGamePiece *)gamePiece atIndex:(ARGameBoardColumn *)column
{
    [column.arrayOfSlots addObject:gamePiece];
}



@end
