//
//  FFTabbarController.m
//  FFListenToFish
//
//  Created by 燚 on 2017/12/18.
//  Copyright © 2017年 SingYi. All rights reserved.
//

#import "FFTabbarController.h"

@interface FFTabbarController ()

@end

@implementation FFTabbarController

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initializeUserInterface];
        [self initializeDataSource];
    }
    return self;
}

- (void)initializeUserInterface {
//    FFCustomizeTabBar *tabbar = [[FFCustomizeTabBar alloc] init];
//    tabbar.customizeDelegate = self;
//    [self setValue:tabbar forKey:@"tabBar"];
}

- (void)initializeDataSource {
//    NSArray *viewControllerNames = @[@"FFHomeViewController", @"FFRankListViewController", @"FFOpenServerViewController", @"FFNewMineViewController"];
    NSArray *viewControllerNames = @[@"FFHomeViewController"];
    NSArray *titles = @[@"主页", @"排行榜", @"开服表", @"我的"];
    NSArray *images = @[@"d_youxi_an", @"b_paihangbang_an-", @"a_libao_an", @"c_wode_an"];
    NSArray *selectImages = @[@"d_youxi_liang", @"b_paihangbang_liang", @"a_libao_liang", @"c_wode_liang"];
    NSMutableArray *viewControllers = [NSMutableArray arrayWithCapacity:4];

    [viewControllerNames enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIViewController *viewController = nil;

        Class classname = NSClassFromString(obj);
        viewController = [[classname alloc] init];

        //        viewController = [[UIViewController alloc] init];

        //        FFNavigationController *nav = [[FFNavigationController alloc] initWithRootViewController:viewController];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
        //设置title
        viewController.navigationItem.title = titles[idx];
        viewController.navigationController.tabBarItem.title = titles[idx];

        viewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:titles[idx] image:[[UIImage imageNamed:images[idx]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectImages[idx]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];

        [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:NAVGATION_BAR_COLOR} forState:UIControlStateSelected];


        [viewControllers addObject:nav];

    }];
    self.viewControllers = viewControllers;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
\


@end
