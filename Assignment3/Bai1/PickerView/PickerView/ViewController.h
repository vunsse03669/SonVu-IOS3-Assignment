//
//  ViewController.h
//  PickerView
//
//  Created by Mr.Vu on 4/5/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property UIPickerView *pickerView;
@property NSMutableArray *arrCity;

@end

