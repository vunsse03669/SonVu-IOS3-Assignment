//
//  ViewController.m
//  Bai2
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
    [self initTableVIew];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)initTableVIew{
    CGRect myFrame = CGRectMake(0,50, self.view.frame.size.width, self.view.frame.size.height-50);
    self.myView = [[UITableView alloc]initWithFrame:(myFrame) style:UITableViewStylePlain];
    self.myView.delegate = self;
    self.myView.dataSource = self;
    [self.view addSubview:self.myView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    return 40;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    NSString *identify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    if ([indexPath row]%2 == 0 && [indexPath row]%4 == 0  ){
//        UIImage *buttonImage = [UIImage imageNamed:@"black_knight.png"];
//        UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        bt.frame = CGRectMake(150.0f, 5.0f, 120.0f, 120.0f);
//        [bt setBackgroundImage:buttonImage forState:UIControlStateNormal];
//        [cell.contentView addSubview:bt];
        UIButton *scanQRCodeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        scanQRCodeButton.frame = CGRectMake(150.0f, 5.0f, 100.0f, 44.0f);
        scanQRCodeButton.backgroundColor = [UIColor blueColor];
        [scanQRCodeButton setTitle:@"Hello" forState:UIControlStateNormal];
        [cell.contentView addSubview:scanQRCodeButton];

        
    }else if([indexPath row]%2 == 0 && [indexPath row]%4 != 0){
//        NSArray *arr = [[NSArray alloc]initWithObjects:@"Y",@"N", nil];
//        UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:arr];
//        [cell.contentView addSubview:segment];
        UIButton *scanQRCodeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        scanQRCodeButton.frame = CGRectMake(150.0f, 5.0f, 100.0f, 44.0f);
        scanQRCodeButton.backgroundColor = [UIColor greenColor];
        [scanQRCodeButton setTitle:@"Hello" forState:UIControlStateNormal];
        [cell.contentView addSubview:scanQRCodeButton];

    }else if(([indexPath row]-1)%4 == 0){

//        UIButton *scanQRCodeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        scanQRCodeButton.frame = CGRectMake(150.0f, 5.0f, 100.0f, 44.0f);
//        [scanQRCodeButton setTitle:@"Hello" forState:UIControlStateNormal];
//        [cell.contentView addSubview:scanQRCodeButton];
        UIButton *scanQRCodeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        scanQRCodeButton.frame = CGRectMake(150.0f, 5.0f, 100.0f, 44.0f);
        scanQRCodeButton.backgroundColor = [UIColor redColor];
        [scanQRCodeButton setTitle:@"Hello" forState:UIControlStateNormal];
        [cell.contentView addSubview:scanQRCodeButton];


        
    }else{
        UIButton *scanQRCodeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        scanQRCodeButton.frame = CGRectMake(150.0f, 5.0f, 100.0f, 44.0f);
        scanQRCodeButton.backgroundColor = [UIColor yellowColor];
        [scanQRCodeButton setTitle:@"Hello" forState:UIControlStateNormal];
        [cell.contentView addSubview:scanQRCodeButton];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryView = [UIView new];

 
    return cell;
}

-(IBAction)performExpand:(id)sender{
    NSLog(@"123");
}

@end
