//
//  ARPlayer.h
//  ConnectFour
//
//  Created by Anton Rivera on 5/5/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ARPlayer : NSObject

@property (nonatomic, assign) UIColor *playerColor;
@property (nonatomic, weak) NSArray *pieces;
@property (nonatomic, readwrite) BOOL isCurrentTurn;

- (instancetype)initWithColor:(UIColor *)color;
- (instancetype)initWithColor:(UIColor *)color andPieceCount:(NSInteger)count;

@end
