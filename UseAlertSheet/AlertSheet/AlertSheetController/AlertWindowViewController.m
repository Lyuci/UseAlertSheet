//
//  AlertWindowViewController.m
//  TianHeWuLiu
//
//  Created by 李娜 on 2016/9/26.
//  Copyright © 2016年 jc2. All rights reserved.
//

#import "AlertWindowViewController.h"
#import "LYC_viewWithTableView.h"


@interface AlertWindowViewController ()

@property (nonatomic, strong) LYC_viewWithTableView *alertWindowView;

@property (nonatomic, strong) UIView *alphaBackView;

@end

@implementation AlertWindowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self createView];
}

- (void)createView
{
    self.alphaBackView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.view addSubview:self.alphaBackView];
    self.alertWindowView = [[LYC_viewWithTableView alloc] initWithFrame:CGRectMake(10, 623, kWidth - 20, 400)];
    self.alertWindowView.layer.cornerRadius = 10;
    self.alertWindowView.backgroundColor = [UIColor whiteColor];
    [self.alertWindowView setHidden:YES];
    [self.view addSubview:self.alertWindowView];
    
    UIButton *subBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    subBtn.frame = CGRectMake(0, 627, kWidth, 40);
    subBtn.backgroundColor = [UIColor redColor];
    [subBtn addTarget:self action:@selector(subAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:subBtn];
}

- (void)subAction:(UIButton *)btn
{
    btn.selected = !btn.isSelected;
    if (btn.selected) {
        
      [UIView animateWithDuration:0.5 animations:^{
         
          self.alphaBackView.backgroundColor = [UIColor lightGrayColor];
          self.alphaBackView.alpha = 0.3;
          self.alertWindowView.center = CGPointMake(self.alertWindowView.center.x, self.alertWindowView.center.y - 400);
          [self.alertWindowView setHidden:NO];
      }];
    }
    else
    {
        [UIView animateWithDuration:0.5 animations:^{
            
            self.alphaBackView.backgroundColor = [UIColor whiteColor];
            self.alertWindowView.center = CGPointMake(self.alertWindowView.center.x, self.alertWindowView.center.y + 400);
//            [self.alertWindowView setHidden:YES];
        }];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
