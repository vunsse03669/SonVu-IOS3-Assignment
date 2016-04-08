//
//  ViewController.m
//  Bai3
//
//  Created by Mr.Vu on 4/8/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIViewController *viewController = [[UIViewController alloc]init];
    viewController.view.backgroundColor = [UIColor blueColor];
    viewController.tabBarItem.title = @"Blue";
    //viewController.tabBarItem.image = [UIImage imageNamed:@"icon1"];
    
    UIViewController *viewController2 = [[UIViewController alloc]init];
    viewController2.view.backgroundColor = [UIColor greenColor];
    viewController2.tabBarItem.title = @"Green";
    //viewController2.tabBarItem.image = [UIImage imageNamed:@"icon2"];
    
    self.tabBarController = [[UITabBarController alloc]init];
    [self.tabBarController setViewControllers:@[viewController, viewController2]];
   
    self.navigationController = [[UINavigationController alloc]initWithRootViewController:self.tabBarController];
   [ self.view addSubview:viewController.self.navigationController.view];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
