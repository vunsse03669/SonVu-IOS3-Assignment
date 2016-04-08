//
//  ViewController.h
//  Bai1
//
//  Created by Mr.Vu on 4/8/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCell.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,CustomCellDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tbvMyView;

@end

