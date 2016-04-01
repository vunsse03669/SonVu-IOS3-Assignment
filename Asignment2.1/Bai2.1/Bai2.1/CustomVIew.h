//
//  CustomVIew.h
//  Bai2.1
//
//  Created by Mr.Vu on 4/1/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface CustomVIew : UIView <MyProtocol>

@property ViewController *control;
- (IBAction)btnMessage2:(id)sender;
- (IBAction)btnMessage1:(id)sender;
@end
