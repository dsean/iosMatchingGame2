//
//  Card.m
//  Matchismo2
//
//  Created by 楊 德忻 on 14/6/20.
//  Copyright (c) 2014年 楊 德忻. All rights reserved.
//

#import "Card.h"

@implementation Card


- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards ) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end

