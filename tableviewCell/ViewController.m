//
//  ViewController.m
//  tableviewCell
//
//  Created by moxi on 2017/9/13.
//  Copyright © 2017年 zyf. All rights reserved.
//

#import "ViewController.h"

#import "TableViewCell1.h"
#import "TableViewCell2.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,TableviewCell1Delegate,UITextViewDelegate,TableviewCell2Delegate>

@property (nonatomic, strong)UITableView *tableview;
@property (nonatomic, strong)NSMutableArray *dataScouse;
@property (nonatomic, assign)NSInteger cellCount;
@property (nonatomic, strong)TableViewCell1 *cell1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dataScouse = [NSMutableArray arrayWithObjects:@"0", nil];
    
    [self createUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -UI

-(void)createUI{

    NSArray *arr = @[@"添加评论",@"添加图片"];
    
    CGFloat buttonW =self.view.bounds.size.width/2;
    CGFloat buttonH = 49;
    for (NSInteger index=0; index<2; index++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(index*buttonW, self.view.bounds.size.height - 49, buttonW, buttonH);
        button.tag = index;
        button.layer.borderColor = [UIColor grayColor].CGColor;
        button.layer.borderWidth = 0.5;
        [button setTitle:arr[index] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    
    self.tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height - 69) style:UITableViewStylePlain];
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.tableview registerNib:[UINib nibWithNibName:@"TableViewCell1" bundle:nil] forCellReuseIdentifier:@"cell1"];
    [self.tableview registerNib:[UINib nibWithNibName:@"TableViewCell2" bundle:nil] forCellReuseIdentifier:@"cell2"];
    
    [self.view addSubview:self.tableview];
    
}

#pragma mark -click

-(void)click:(UIButton*)button{


    if (button.tag) {
      
        [self.dataScouse addObject:@"1"];
    }else{
        
        [self.dataScouse addObject:@"0"];
    }
    
    [self.tableview reloadData];
}


#pragma mark -tableviewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataScouse.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 180;
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *str = self.dataScouse[indexPath.row];
    if ([str isEqualToString:@"0"]) {
        TableViewCell1 *cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        if (!cell1) {
            cell1 = [[TableViewCell1 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        }
        cell1.textView.delegate = self;
        cell1.delegate = self;
        
        return cell1;
    }else{
        
        TableViewCell2 *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        if (!cell2) {
            cell2 = [[TableViewCell2 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
        }
        cell2.delegate = self;
        
        return cell2;
    }
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}


-(void)tableviewCell1:(TableViewCell1 *)cell button:(UIButton *)button{
    
    NSIndexPath *indexPath = [self.tableview indexPathForCell:cell];
    
    if (button.tag == 1) {
        [self.dataScouse removeObjectAtIndex:indexPath.row];
        [self.tableview reloadData];
    }else{
        if (indexPath.row) {
            if (button.tag == 2){
                
                [self.dataScouse exchangeObjectAtIndex:indexPath.row withObjectAtIndex:indexPath.row - 1];
            }else{
                
                [self.dataScouse exchangeObjectAtIndex:indexPath.row withObjectAtIndex:indexPath.row + 1];
                
            }
            
            [self.tableview reloadData];
        }
        
    }
    

}

-(void)tableviewcell2:(TableViewCell2 *)cell button:(UIButton *)btn{
    NSIndexPath *indexPath = [self.tableview indexPathForCell:cell];
    
    if (btn.tag == 1) {
        [self.dataScouse removeObjectAtIndex:indexPath.row];
        [self.tableview reloadData];
    }else{
        if (indexPath.row) {
            if (btn.tag == 2){
                
                [self.dataScouse exchangeObjectAtIndex:indexPath.row withObjectAtIndex:indexPath.row - 1];
            }else{
                
                [self.dataScouse exchangeObjectAtIndex:indexPath.row withObjectAtIndex:indexPath.row + 1];
                
            }
            
            [self.tableview reloadData];
        }
        
    }
    
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    [self.cell1.textView restorationIdentifier];
}

@end
