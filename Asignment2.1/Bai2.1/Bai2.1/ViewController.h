//
//  ViewController.h
//  Bai2.1
//
//  Created by Mr.Vu on 4/1/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyProtocol <NSObject>

-(void)showMessage:(NSString *)msg;

@end

@interface ViewController : UIViewController

@property NSString *msg;
@property id<MyProtocol>instance;
- (IBAction)btnShowMessage:(id)sender;

@end

