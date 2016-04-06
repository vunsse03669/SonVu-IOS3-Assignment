//
//  ViewController.h
//  TableView
//
//  Created by Mr.Vu on 4/5/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property UITableView *tableView;
@property NSMutableArray *arrCity;

@end

