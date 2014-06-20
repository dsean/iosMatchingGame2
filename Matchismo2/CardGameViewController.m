//
//  CardGameViewController.m
//  Matchismo2
//
//  Created by 楊 德忻 on 14/6/20.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "CardGameViewController.h"

#import "PlayingCardDeck.h"
@interface CardGameViewController ()

@property (strong, nonatomic) Deck *deck;
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipcount;
@end

@implementation CardGameViewController

- (Deck *)deck {
    if (!_deck) {
        _deck = [self createDeck];
    }
    return _deck;
}
- (Deck *)createDeck {
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed: @"cardBack" ] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipcount++;
        
    }
    else {
        
        Card *randomCard = [self.deck drawRandomCard];
        if (randomCard) {
            [sender setBackgroundImage:[UIImage imageNamed: @"cardFront" ] forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
            self.flipcount++;
        }
        

    }
    
    
}

- (void) setFlipcount:(int)flipcount {
    _flipcount = flipcount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:%d",self.flipcount];
}



@end
