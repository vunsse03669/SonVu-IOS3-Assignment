//
//  ViewController.m
//  Bai2.1
//
//  Created by Mr.Vu on 4/1/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "ViewController.h"
#import "CustomVIew.h"

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

- (IBAction)btnShowMessage:(id)sender {
//    UINib *nib = [UINib nibWithNibName:@"View" bundle:nil];
//    CustomVIew *view = [[nib instantiateWithOwner:self options:nil] objectAtIndex:0];
    CustomVIew *view = [[CustomVIew alloc]init];
    [self.view addSubview:view];

}
@end
