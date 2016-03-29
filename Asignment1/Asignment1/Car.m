//
//  Car.m
//  Asignment1
//
//  Created by Mr.Vu on 3/29/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.positionX = 2;
        self.positionY = 2;
    }
    return self;
}

-(void) move
{
    NSLog(@"Car was moved");
}
-(void) eat
{
    NSLog(@"Car was eaten");
}
@end
