//
//  BaseTabbarController.m
//  EachChild
//
//  Created by 虞军军 on 16/11/24.
//  Copyright © 2016年 erongchuang. All rights reserved.
//

#import "BaseTabbarController.h"
#import "BaseNavigationController.h"

#import "HPHomePageViewController.h"
#import "FMFudaiMarketViewController.h"
#import "IMInstantMessagingViewController.h"
#import "UCUserCenterViewController.h"

@interface BaseTabbarController ()



@end

@implementation BaseTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.viewControllers = [self addControllers];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    [[UITabBar appearance] setTranslucent:YES];
    [[UITabBar appearance] setAlpha:0.8];
}

- (NSArray *)addControllers {
    NSMutableArray *viewCtrls = [NSMutableArray arrayWithCapacity:4];
    //1.首页
    HPHomePageViewController *homeVC = [[HPHomePageViewController alloc] initWithNibName:@"HPHomePageViewController" bundle:nil];
    BaseNavigationController *homeNav = [[BaseNavigationController alloc] initWithRootViewController:homeVC];
    homeNav.tabBarItem = [self tabBarItemWithTitle:@"首页" imageName:@"tabbar_hp" selectedImageName:@"tabbar_hp_selected"];
    [viewCtrls addObject:homeNav];
    //2.交易
    FMFudaiMarketViewController *stockVC = [[FMFudaiMarketViewController alloc] initWithNibName:@"FMFudaiMarketViewController" bundle:nil];
    BaseNavigationController *stockNav = [[BaseNavigationController alloc] initWithRootViewController:stockVC];
    stockNav.tabBarItem = [self tabBarItemWithTitle:@"市场" imageName:@"tabbar_fm" selectedImageName:@"tabbar_fm_selected"];
    [viewCtrls addObject:stockNav];
    //3.资讯
    IMInstantMessagingViewController *informationVC = [[IMInstantMessagingViewController alloc] initWithNibName:@"IMInstantMessagingViewController" bundle:nil];
    BaseNavigationController *infomationNav = [[BaseNavigationController alloc] initWithRootViewController:informationVC];
    infomationNav.tabBarItem = [self tabBarItemWithTitle:@"消息" imageName:@"tabbar_im" selectedImageName:@"tabbar_im_selected"];
    [viewCtrls addObject:infomationNav];
    //4.我的
    UCUserCenterViewController *userVC = [[UCUserCenterViewController alloc] initWithNibName:@"UCUserCenterViewController" bundle:nil];
    BaseNavigationController *userNav = [[BaseNavigationController alloc] initWithRootViewController:userVC];
    userNav.tabBarItem = [self tabBarItemWithTitle:@"我的" imageName:@"tabbar_uc" selectedImageName:@"tabbar_uc_selected"];
    [viewCtrls addObject:userNav];
    
    return viewCtrls;
}
- (UITabBarItem *)tabBarItemWithTitle:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {
    return [[UITabBarItem alloc] initWithTitle:title image:[[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
}




@end