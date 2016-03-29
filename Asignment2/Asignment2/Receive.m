//
//  Receive.m
//  Asignment2
//
//  Created by Mr.Vu on 3/29/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Receive.h"

@implementation Receive

- (instancetype)init
{
    self = [super init];
    if (self) {
        Alert *alert = [[Alert alloc]init];
        alert.instance = self;
    }
    return self;
}

-(void)notificationMessage:(NSString *)msg
{
    NSLog(@"%@",msg);
}

@end
