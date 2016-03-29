//
//  King.m
//  Asignment1
//
//  Created by Mr.Vu on 3/29/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "King.h"

@implementation King

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.positionX = 1;
        self.positionY = 1;
    }
    return self;
}

-(void) move
{
    NSLog(@"King was moved");
}
-(void)eat
{
    NSLog(@"King was eaten");
}

@end
