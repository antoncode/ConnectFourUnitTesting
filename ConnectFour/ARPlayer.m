//
//  ARPlayer.m
//  ConnectFour
//
//  Created by Anton Rivera on 5/5/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "ARPlayer.h"
#import "ARGamePiece.h"

@implementation ARPlayer

- (instancetype) initWithColor:(UIColor *)color
{
    self = [super init];
    
    if (self) {
        _playerColor = color;
    }
    return self;
}

- (instancetype)initWithColor:(UIColor *)color andPieceCount:(NSInteger)count
{
    if (self = [super init]) {
        _playerColor = color;
        NSMutableArray *tempPiecesArray = [NSMutableArray new];
        for (NSInteger i=0; i<count; i++) {
            ARGamePiece *gamePiece = [color isEqual:[UIColor blackColor]] ? [ARGamePiece blackPiece] : [ARGamePiece redPiece];  // if-else in one line
            [tempPiecesArray addObject:gamePiece];
        }
        _pieces = tempPiecesArray;
        
    }
    
    return self;

}


@end
