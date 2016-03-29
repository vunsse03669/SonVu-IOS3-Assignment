//
//  Chess.h
//  Asignment1
//
//  Created by Mr.Vu on 3/29/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chess : NSObject
@property int positionX;
@property int positionY;

-(void) move;
-(void) eat;

@end
