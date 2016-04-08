//
//  CustomCell.m
//  Bai1
//
//  Created by Mr.Vu on 4/8/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "CustomCell.h"


@implementation CustomCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)swichDidChangeValue:(id)sender {
    if(self.delegate && [self.delegate respondsToSelector:@selector(swichForCell:value:)]){
        [self.delegate swichForCell:self value:self.swSetting.on];
    }
}
@end
