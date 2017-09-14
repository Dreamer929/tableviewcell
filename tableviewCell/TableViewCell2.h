//
//  TableViewCell2.h
//  tableviewCell
//
//  Created by moxi on 2017/9/13.
//  Copyright © 2017年 zyf. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableViewCell2;

@protocol TableviewCell2Delegate <NSObject>

@optional

-(void)tableviewcell2:(TableViewCell2*)cell button:(UIButton*)btn;

@end

@interface TableViewCell2 : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *deldeBut;
@property (weak, nonatomic) IBOutlet UIButton *topBtn;

@property (weak, nonatomic) IBOutlet UIButton *bottomBtn;

@property (nonatomic,weak)id<TableviewCell2Delegate>delegate;

@end
