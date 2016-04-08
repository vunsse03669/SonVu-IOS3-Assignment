//
//  ViewController.m
//  Bai1
//
//  Created by Mr.Vu on 4/8/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tbvMyView.delegate = self;
    self.tbvMyView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - table view

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSString *identifier = @"cell";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(!cell){
        cell = [[NSBundle mainBundle]loadNibNamed:@"CustomCell" owner:nil options:nil].firstObject;
    }
    cell.imvIcon.image = [UIImage imageNamed:@"avt"];
    cell.lbTitle.text = [NSString stringWithFormat:@"Row %ld",indexPath.row];
    cell.swSetting.on = indexPath.row % 2;
    cell.delegate = self;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 100;
}

-(void) swichForCell:(UITableViewCell *)cell value:(BOOL)on;
{
    NSLog(@"xxxxxx");
}

@end
