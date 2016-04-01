//
//  CustomVIew.m
//  Bai2.1
//
//  Created by Mr.Vu on 4/1/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "CustomVIew.h"

@implementation CustomVIew

- (instancetype)init
{
    self = [super init];
    if (self) {
        UINib *nib = [UINib nibWithNibName:@"View" bundle:nil];
        self = [[nib instantiateWithOwner:self options:nil] objectAtIndex:0];
        self.control = [[ViewController alloc]init];
        _control.instance = self;
    }
    return self;
}

- (IBAction)btnMessage2:(id)sender {
    _control.msg = @" You have been clicked button \"Message2\"";
    [self showMessage:_control.msg];
    [self removeFromSuperview];
}

- (IBAction)btnMessage1:(id)sender {
    _control.instance = self;
    _control.msg = @" You have been clicked button \"Message1\"";
    [self showMessage:_control.msg];
    [self removeFromSuperview];
}

-(void)showMessage:(NSString *)msg;{
    NSLog(@"%@",msg);
}
@end
