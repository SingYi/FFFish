//
//  FFBaseViewController.m
//  FFListenToFish
//
//  Created by 燚 on 2017/12/22.
//  Copyright © 2017年 SingYi. All rights reserved.
//

#import "FFBaseViewController.h"
#import "MJRefresh.h"

@interface FFBaseViewController ()

@end

@implementation FFBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUserInterface];
    [self initDataSource];
}


- (void)initUserInterface {
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
}

- (void)initDataSource {

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - getter
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kScreen_width, kScreen_height) style:(UITableViewStylePlain)];

        _tableView.backgroundColor = [UIColor redColor];
    }
    return _tableView;
}






@end




