//
//  ARGamePiece.h
//  ConnectFour
//
//  Created by Anton Rivera on 5/5/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ARPlayer, ARGameBoard;

@interface ARGamePiece : NSObject

@property (nonatomic, strong) UIColor *pieceColor;
@property (nonatomic, weak) ARPlayer *player;
@property (nonatomic, weak) ARGameBoard *gameBoard;

+(ARGamePiece *)redPiece;
+(ARGamePiece *)blackPiece;

@end
