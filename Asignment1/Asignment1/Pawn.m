//
//  Pawn.m
//  Asignment1
//
//  Created by Mr.Vu on 3/29/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Pawn.h"

@implementation Pawn

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.positionY = 0;
        self.positionX = 0;
    }
    return self;
}

-(void)move
{
    NSLog(@"Pawn was moved");
}
-(void)eat
{
    NSLog(@"Pawn was eaten");
}

@end
