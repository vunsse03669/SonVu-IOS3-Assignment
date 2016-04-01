//
//  ViewController.m
//  Bai1
//
//  Created by Mr.Vu on 3/30/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showReport:(id)sender {
    self.alert = [[UIAlertView alloc]initWithTitle:@"Hello" message:@"Select my Button" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
    [self.alert addButtonWithTitle:@"Button1"];
    [self.alert addButtonWithTitle:@"Button2"];
    [self.alert addButtonWithTitle:@"Button3"];
    [self.alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 1){
        NSLog(@"You have been pressed \"Button1\"");
    }else if(buttonIndex == 2){
        NSLog(@"You have been pressed \"Button2\"");
    }else if(buttonIndex == 3){
        NSLog(@"You have been pressed \"Button3\"");

    }
}
@end
