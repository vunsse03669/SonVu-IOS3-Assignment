//
//  CustomCell.h
//  Bai1
//
//  Created by Mr.Vu on 4/8/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomCellDelegate <NSObject>

-(void) swichForCell:(UITableViewCell *)cell value:(BOOL)on;

@end

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imvIcon;
@property (weak, nonatomic) IBOutlet UISwitch *swSetting;
@property id<CustomCellDelegate> delegate;

- (IBAction)swichDidChangeValue:(id)sender;

@end
