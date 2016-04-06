//
//  ViewController.m
//  SegmentAndSwitch
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
    [self initSegmnet];
    [self initSwitch
     ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)choseColor:(id)sender{
    NSLog(@"123");
}

-(void)initSegmnet{
    NSArray *arrColor = [[NSArray alloc]initWithObjects:@"Red",@"White",@"Yelow",@"Orange",@"Green", nil];
    self.segment = [[UISegmentedControl alloc]initWithItems:arrColor];
    CGRect myFrame = CGRectMake(50,80,300,60);
    self.segment.frame = myFrame;
    [self.view addSubview:self.segment];
    
    [self.segment addTarget:self
                     action:@selector(choseColor:)
           forControlEvents:UIControlEventValueChanged];
}
-(void)initSwitch{
    CGRect myFrame = CGRectMake(100, 200, 100, 100);
    self.switchButton = [[UISwitch alloc]initWithFrame:myFrame];
    [self.switchButton setOn:YES];
    [self.view addSubview:self.switchButton];
    [self.switchButton addTarget:self action:@selector(turn:) forControlEvents:UIControlEventValueChanged];
}
-(IBAction)turn:(id)sender{
    NSLog(@"xxx");
}

@end
