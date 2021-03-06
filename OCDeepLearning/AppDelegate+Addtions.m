//
//  AppDelegate+Addtions.m
//  OCDeepLearning
//
//  Created by walker on 2018/6/5.
//  Copyright © 2018年 walker彬. All rights reserved.
//

#import "AppDelegate+Addtions.h"
#import "TestViewController.h"
#import "OCBaseTableViewController.h"
#import "MainViewController.h"
#import "ThirdViewController.h"
#import "OCFuntionStyleViewController.h"
#import "ViewController.h"

//@interface AppDelegate (Addtions)
//
//@property (nonatomic, readwrite, strong) NSManagedObjectModel *managedObjectModel;
//
//@end


@implementation AppDelegate (Addtions)

- (void)setupRootVC {
    UITabBarController *tabbarVC = [[UITabBarController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tabbarVC];
    
//    MainViewController *firstVC = [[MainViewController alloc] init];
//    firstVC.view.backgroundColor = [UIColor grayColor];
    
    ViewController *firstVC = [[ViewController alloc] init];
    firstVC.title = @"测试list";
    
//    UITableViewController *secondTableVC = [[OCBaseTableViewController alloc] initWithStyle:UITableViewStylePlain];
//    secondTableVC.title = @"第二页";
    
    OCFuntionStyleViewController *funtionStyleVC = [[OCFuntionStyleViewController alloc] init];
    funtionStyleVC.title = @"功能";

    TestViewController *testVC = [[TestViewController alloc] init];
    testVC.title = @"Test";
    testVC.navigationController.title = @"TEST";
    tabbarVC.navigationController.title = @"dsd";
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    thirdVC.title = @"第三页";
    
    tabbarVC.viewControllers = @[firstVC,funtionStyleVC,thirdVC,testVC];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
}


@end
