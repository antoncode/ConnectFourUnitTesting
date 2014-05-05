//
//  ConnectFourTests.m
//  ConnectFourTests
//
//  Created by Anton Rivera on 5/5/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ARGamePiece.h"
#import "ARGameBoard.h"
#import "ARPlayer.h"
#import "ARGameBoardColumn.h"

@interface ConnectFourTests : XCTestCase

@property (nonatomic, strong) ARGameBoard *gameBoard;
@property (nonatomic, strong) ARGameBoardColumn *gameBoardColumn;

@end

@implementation ConnectFourTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    _gameBoard = [[ARGameBoard alloc] initWithPlayers];
    _gameBoardColumn = [[ARGameBoardColumn alloc] initWithSlots];
    
}

- (void)tearDown
{
    _gameBoard = nil;
    _gameBoardColumn = nil;
    
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testColorOfNewPiece
{
    ARGamePiece *redPiece = [ARGamePiece redPiece];
    ARGamePiece *blackPiece = [ARGamePiece blackPiece];
    
    XCTAssertEqual(redPiece.pieceColor, [UIColor redColor] , @"Red piece should be red");
    XCTAssertEqual(blackPiece.pieceColor, [UIColor blackColor] , @"Black piece should be black");
}

- (void)testNewGamePlayerCount
{
    XCTAssertTrue(_gameBoard.players.count == 2, @"New game should have two players.");
}

- (void)testNewGamePlayerColor
{
    ARPlayer *firstPlayer = [_gameBoard.players firstObject];
    ARPlayer *secondPlayer = [_gameBoard.players lastObject];
    
    UIColor *firstPlayerColor = firstPlayer.playerColor;
    UIColor *secondplayerColor = secondPlayer.playerColor;
    
    XCTAssertNotEqual(firstPlayerColor, secondplayerColor, @"Players colors should not be equal");
    XCTAssertTrue([firstPlayerColor isEqual:[UIColor redColor]] || [secondplayerColor isEqual:[UIColor redColor]], @"One of the players should be red.");
    XCTAssertTrue([firstPlayerColor isEqual:[UIColor blackColor]] || [secondplayerColor isEqual:[UIColor blackColor]], @"One of the players should be black.");
}

- (void)testNewGamePlayersExist
{
    for (NSInteger i=0; i<_gameBoard.players.count; i++) {
        XCTAssertNotNil(_gameBoard.players[i], @"Player %ld should exist", (long)i);
    }
}

- (void)testGameBoardForPieces
{
    for (ARGamePiece *piece in _gameBoard.pieces) {
        XCTAssertEqualObjects(piece.gameBoard, _gameBoard, @"Pieces should reference their game board");
    }
}

- (void)testPieceColorEqualsPlayerColor
{
    for (ARPlayer *player in _gameBoard.players) {
        for (ARGamePiece *gamePiece in player.pieces) {
            XCTAssertEqual(gamePiece.pieceColor, player.playerColor, @"The piece color should match the player color");
        }
    }
}

- (void)testGameboardHasColumnsErroneous
{
    // Test erroneously passes every time
    for (NSInteger i=0; i<_gameBoard.arrayOfColumns.count; i++) {
        XCTAssertNotNil(_gameBoard.arrayOfColumns[i], @"Column %ld should exist", (long)i);
    }
}

- (void)testGameboardHasColumns
{

    XCTAssertNotNil(_gameBoard.arrayOfColumns, @"Gameboard should have columns");

}

- (void)testColumnsHasSlots
{
    XCTAssertNotNil(_gameBoardColumn.arrayOfSlots, @"Columns should have slots");
}

- (void)testGameBoardHasOnlyOnePlayerSelectedForTurn
{
    XCTAssertNotEqual([_gameBoard.players[0] isCurrentTurn], [_gameBoard.players[1] isCurrentTurn], @"Both players can't have current turn");
    XCTAssertTrue([_gameBoard.players[0] isCurrentTurn] || [_gameBoard.players[1] isCurrentTurn]);
}



@end










