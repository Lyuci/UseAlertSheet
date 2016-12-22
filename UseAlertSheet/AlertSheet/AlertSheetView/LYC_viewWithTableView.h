//
//  LYC_viewWithTableView.h
//  TianHeWuLiu
//
//  Created by 李娜 on 2016/9/26.
//  Copyright © 2016年 jc2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYC_viewWithTableView : UIView

@property (nonatomic, strong) UITableView *lyc_tableView;

@property (nonatomic, assign) NSInteger cellCount;

@property (nonatomic, strong) NSMutableArray *imagesArray;

/**
 * 添加
 */
@property (nonatomic, strong) UIButton *addBtn;
/**
 * 确定
 */
@property (nonatomic, strong) UIButton *sureBtn;

@end
