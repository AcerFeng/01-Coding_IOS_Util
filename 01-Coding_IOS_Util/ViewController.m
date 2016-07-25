//
//  ViewController.m
//  01-Coding_IOS_Util
//
//  Created by lanfeng on 16/7/25.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

#import "ViewController.h"
#import "NSDateTestController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic , strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.tableView reloadData];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
        
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.view);
        }];
    }
    return _tableView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark --- UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 10;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            NSDateTestController *dateTestController = [[NSDateTestController alloc] init];
            [self.navigationController pushViewController:dateTestController animated:YES];
        }
            break;
            
        default:
            break;
    }
}

#pragma mark --- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
    }
    
    switch (indexPath.row) {
        case 0:
        {
            cell.textLabel.text = @"时间";
        }
            break;
            
        default:
        {
            cell.textLabel.text = @"测试";
        }
            break;
    }
    
    //    cell.detailTextLabel.text = @"测试";
    
    
    return cell;
}
@end
