//
//  ViewController.m
//  AlertView
//
//  Created by Mr.Vu on 4/5/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.alertView = [[UIAlertView alloc]initWithTitle:@"Popup" message:@"!!!" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",@"xxx", nil];
    self.alertView.delegate = self;
    [self.alertView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0){
        NSLog(@"cacel");
    }else if(buttonIndex == 1){
        NSLog(@"Ok");
    }else if(buttonIndex == 2){
        NSLog(@"xxx");
    }
}
@end
