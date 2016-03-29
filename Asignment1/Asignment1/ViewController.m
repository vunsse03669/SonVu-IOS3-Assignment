//
//  ViewController.m
//  Asignment1
//
//  Created by Mr.Vu on 3/29/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "ViewController.h"
#import "Pawn.h"
#import "King.h"
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Pawn *pawn = [[Pawn alloc]init];
    NSLog(@"postion of Pawn: %i - %i",pawn.positionX,pawn.positionY);
    [pawn move];
    [pawn eat];
    
    King *king = [[King alloc]init];
    NSLog(@"postion of King: %i - %i",king.positionX,king.positionY);
    [king move];
    [king eat];
    
    Car *car = [[Car alloc]init];
    NSLog(@"postion of Car: %i - %i",car.positionX,car.positionY);
    [car move];
    [car eat];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
