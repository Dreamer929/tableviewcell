//
//  TableViewCell1.m
//  tableviewCell
//
//  Created by moxi on 2017/9/13.
//  Copyright © 2017年 zyf. All rights reserved.
//

#import "TableViewCell1.h"

@implementation TableViewCell1

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)delegateClick:(UIButton *)sender {
    
    if ([self.delegate respondsToSelector:@selector(tableviewCell1:button:)]) {
        
        [self.delegate tableviewCell1:self button:sender];
    }
}


- (IBAction)moveTopClick:(UIButton *)sender {

    if ([self.delegate respondsToSelector:@selector(tableviewCell1:button:)]) {
        
        [self.delegate tableviewCell1:self button:sender];
    }
}




- (IBAction)moveBottomClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(tableviewCell1:button:)]) {
        
        [self.delegate tableviewCell1:self button:sender];
    }
}



@end
