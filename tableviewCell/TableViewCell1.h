//
//  TableViewCell1.h
//  tableviewCell
//
//  Created by moxi on 2017/9/13.
//  Copyright © 2017年 zyf. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableViewCell1;

@protocol TableviewCell1Delegate <NSObject>

@optional

-(void)tableviewCell1:(TableViewCell1*)cell button:(UIButton*)button;

@end

@interface TableViewCell1 : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic) IBOutlet UIButton *deleteButn;
@property (weak, nonatomic) IBOutlet UIButton *topMoveBtn;
@property (weak, nonatomic) IBOutlet UIButton *bottomMoveBtn;

@property(nonatomic, weak)id<TableviewCell1Delegate>delegate;

@end
