//
//  LoginViewController.h
//  Bai 4
//
//  Created by Mr.Vu on 4/8/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarViewController.h"

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *viewLogin;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property TabBarViewController *mainTabBar;
- (IBAction)btnClickedLogin:(id)sender;
- (IBAction)btnClickedRegister:(id)sender;
- (IBAction)btnClickedForgetPassword:(id)sender;
@end
