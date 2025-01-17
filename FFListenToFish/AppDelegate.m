//
//  AppDelegate.m
//  FFListenToFish
//
//  Created by 石燚 on 2017/12/18.
//  Copyright © 2017年 SingYi. All rights reserved.
//

#import "AppDelegate.h"
#import "FFTabbarController.h"
#import <AVOSCloud/AVOSCloud.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initUserInterface];
    [self initDataSource];
    [AVAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    NSLog(@"launchOptions === %@",launchOptions);
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.


    NSLog(@"????");
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the applicamtion is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - custom methods
- (void)initUserInterface {
    [self creatWindow];
}



- (void)initDataSource {
    [AVOSCloud setApplicationId:@"2qewcoP52UQbMqQFd5VmL03i-gzGzoHsz" clientKey:@"394WCmr17Dbmjd8xinOkM4VF"];
#ifdef DEBUG
    [AVOSCloud setAllLogsEnabled:YES];
    NSLog(@"leancloud - 调试");
#endif
}



- (void)creatWindow {

    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, kScreen_width, kScreen_height)];
    FFTabbarController *tab = [[FFTabbarController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tab];
    nav.navigationBar.hidden = YES;
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];

}







@end













