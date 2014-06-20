//
//  PlayingCard.m
//  Matchismo2
//
//  Created by 楊 德忻 on 14/6/20.
//  Copyright (c) 2014年 楊 德忻. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *) contents {
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit=_suit;
- (void)setSuit:(NSString *)suit {
    
    if ([[PlayingCard validSuit]containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

+ (NSArray *)validSuit {
    return @[@"♣", @"♦" , @"♥" ,@"♠"];
}

+ (NSArray *)rankStrings {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}
+ (int)maxRank{
    return [[self rankStrings] count]-1;
}

- (void) setRank:(NSInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank =rank;
    }
}
@end
