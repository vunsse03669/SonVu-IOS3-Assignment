//
//  Alert.h
//  Asignment2
//
//  Created by Mr.Vu on 3/29/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AlertProtocol <NSObject>

-(void) notificationMessage:(NSString *)msg;

@end


@interface Alert : NSObject

@property NSString *msg;
@property id<AlertProtocol> instance;

@end
