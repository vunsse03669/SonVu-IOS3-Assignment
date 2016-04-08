//
//  LoginViewController.m
//  Bai 4
//
//  Created by Mr.Vu on 4/8/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "ForgetPasswordViewController.h"
#import "TabBarViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.btnLogin.layer.cornerRadius = 10.0f;
    self.viewLogin.layer.cornerRadius = 10.0f;
    self.viewLogin.layer.borderWidth = 3.0f;
    self.viewLogin.layer.borderColor = [UIColor blackColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnClickedLogin:(id)sender {
    self.btnLogin.layer.backgroundColor = [UIColor greenColor].CGColor;
    self.mainTabBar = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"TabBarViewController"];
    [self presentViewController:self.mainTabBar animated:YES completion:^{
    
    }];
    //[self.view removeFromSuperview];
}

- (IBAction)btnClickedRegister:(id)sender {
    RegisterViewController *re = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"RegisterViewController"];
    
    [self.navigationController pushViewController:re animated:YES];
    NSLog(@"123");
}

- (IBAction)btnClickedForgetPassword:(id)sender {
    ForgetPasswordViewController *forget = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]
     instantiateViewControllerWithIdentifier:@"ForgetPasswordViewController"];
    
    [self.navigationController pushViewController:forget animated:YES];
}
@end
