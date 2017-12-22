//
//  FFBaseViewController.h
//  FFListenToFish
//
//  Created by 燚 on 2017/12/22.
//  Copyright © 2017年 SingYi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FFBaseViewController : UIViewController

@property (nonatomic, strong) UITableView *tableView;


/** initialize user inter face */
- (void)initUserInterface;

/** initialize data source  */
- (void)initDataSource;


@end
