//
//  ViewController.m
//  PickerView
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
    self.arrCity = @[@[@"1",@"2",@"3",@"4"],
                     @[@"xxx",@"yyy",@"zzz"],
                     @[@"111",@"222",@"333"]];
    CGRect myFrame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    self.pickerView = [[UIPickerView alloc]initWithFrame:myFrame];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    
    [self.view addSubview:self.pickerView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;{
    return 3;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;{
    return self.arrCity.count;
}

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.arrCity[row][component];
}

@end
