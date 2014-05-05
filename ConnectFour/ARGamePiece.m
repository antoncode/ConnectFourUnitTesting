//
//  ARGamePiece.m
//  ConnectFour
//
//  Created by Anton Rivera on 5/5/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "ARGamePiece.h"

@implementation ARGamePiece

+(ARGamePiece *)redPiece
{
    return [ARGamePiece pieceWithColor:[UIColor redColor]];
}

+(ARGamePiece *)blackPiece
{    
    return [ARGamePiece pieceWithColor:[UIColor blackColor]];
}

+(ARGamePiece *)pieceWithColor:(UIColor *)color
{
    ARGamePiece *piece = [ARGamePiece new];
    
    piece.pieceColor = color;
    
    return piece;
}

@end
