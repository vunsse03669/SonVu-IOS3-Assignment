//
//  ViewController.m
//  ActionSheet
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
    self.actionSheet = [[UIActionSheet alloc]initWithTitle:@"Demo ActionSheet" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete" otherButtonTitles:@"1",@"2",@"3", nil];
    self.actionSheet.delegate = self;
    [self.actionSheet showInView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0){
        NSLog(@"delete");
    }else if(buttonIndex == 1){
        NSLog(@"1");
    }else if(buttonIndex == 2){
        NSLog(@"2");
    }else if(buttonIndex == 3){
        NSLog(@"3");
    }else{
        NSLog(@"cancel");
    }
}

@end
