//
//  CardMatchingGame.h
//  Matchismo2
//
//  Created by 楊 德忻 on 14/6/20.
//  Copyright (c) 2014年 楊 德忻. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

- (instancetype) initWithCatdCount:(NSInteger)count usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly)NSUInteger score;

@end
