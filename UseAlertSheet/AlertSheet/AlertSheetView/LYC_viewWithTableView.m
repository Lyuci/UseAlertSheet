//
//  LYC_viewWithTableView.m
//  TianHeWuLiu
//
//  Created by 李娜 on 2016/9/26.
//  Copyright © 2016年 jc2. All rights reserved.
//

#import "LYC_viewWithTableView.h"
#import "LYC_alertSheetTableViewCell.h"

@interface LYC_viewWithTableView ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation LYC_viewWithTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self lyc_createIcounts];
        [self lyc_createTableView];
        
    }return self;
}

#pragma mark 创建表头
- (void)lyc_createIcounts
{
    if (self.imagesArray.count != 0) {
        for (int i = 0; i < self.imagesArray.count; i++) {
            UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.imagesArray[i]]];
            imageV.frame = CGRectMake(45 + 120 * i, 10, 30, 30);
            imageV.backgroundColor = [UIColor grayColor];
            [self addSubview:imageV];
        }
    }
   
}

#pragma mark 创建tableView
- (void)lyc_createTableView
{
    self.lyc_tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, self.frame.size.width, self.frame.size.height - 70)];
    self.lyc_tableView.delegate = self;
    self.lyc_tableView.dataSource = self;
//    注册cell
     [self.lyc_tableView registerNib:[UINib nibWithNibName:@"LYC_alertSheetTableViewCell" bundle:nil] forCellReuseIdentifier:@"sheetIdentifier"];
     [self addSubview:self.lyc_tableView];
    
    self.addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.addBtn.frame = CGRectMake(15, self.lyc_tableView.frame.size.height + self.lyc_tableView.frame.origin.y, 40, 20);
    [self.addBtn setTitle:@"添加" forState:UIControlStateNormal];
    [self.addBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:self.addBtn];
    self.sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.sureBtn.frame = CGRectMake(self.sureBtn.frame.size.width + 300, self.lyc_tableView.frame.size.height + self.lyc_tableView.frame.origin.y, 40, 20);
    [self.sureBtn setTitle:@"确定" forState:UIControlStateNormal];
    [self.sureBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:self.sureBtn];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _cellCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LYC_alertSheetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sheetIdentifier" forIndexPath:indexPath];
    
    return cell;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
