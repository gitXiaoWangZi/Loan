//
//  FindViewController.m
//  Loan
//
//  Created by FanXing on 2018/3/28.
//  Copyright © 2018年 FanXing. All rights reserved.
//

#import "FindViewController.h"

@interface FindViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation FindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"咨询";
    [self createUI];
}
-(void)createUI {
  
    [self.view addSubview:self.tableView];
    self.tableView.frame = CGRectMake(0, kStatusBarHeight, KScreenWidth, KScreenHeight -kStatusBarHeight- kTabBarHeight);
    self.tableView.backgroundColor = KWhiteColor;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.mj_header.hidden = YES;
    self.tableView.mj_footer.hidden = YES;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableView.separatorColor = CLineColor;
    
}


#pragma mark ------ UITableView Delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return kAdaptedHeight(110);
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return [[UITableViewCell alloc] init];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
