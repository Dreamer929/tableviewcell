//
//  TableViewCell2.m
//  tableviewCell
//
//  Created by moxi on 2017/9/13.
//  Copyright © 2017年 zyf. All rights reserved.
//

#import "TableViewCell2.h"

@implementation TableViewCell2

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)deldegateClick:(UIButton *)sender {
    
    if ([self.delegate respondsToSelector:@selector(tableviewcell2:button:)]) {
        [self.delegate tableviewcell2:self button:sender];
    }
}
- (IBAction)topmoveClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(tableviewcell2:button:)]) {
        [self.delegate tableviewcell2:self button:sender];
    }
}
- (IBAction)bottomMoveClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(tableviewcell2:button:)]) {
        [self.delegate tableviewcell2:self button:sender];
    }
}

@end
