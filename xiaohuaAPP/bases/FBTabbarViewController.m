//
//  FBTabbarViewController.m
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import "FBTabbarViewController.h"
#import "FBNavigationViewController.h"
#import "FBImagesViewController.h"
#import "FBTextsViewController.h"
#import "FBAduioViewController.h"
#import "FBAodiceViewController.h"


@interface FBTabbarViewController ()

@end

@implementation FBTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    FBImagesViewController *imgVC=[[FBImagesViewController alloc]init];
    
    FBNavigationViewController *imgNa=[[FBNavigationViewController alloc]initWithRootViewController:imgVC];
    imgNa.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:100];
    imgNa.tabBarItem.title=@"图片";
    FBTextsViewController *textVC=[[FBTextsViewController alloc]init];
    
    FBNavigationViewController *textNa=[[FBNavigationViewController alloc]initWithRootViewController:textVC];
    textNa.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:100];
    textNa.tabBarItem.title=@"图片";
    
    FBAduioViewController *aduioVC=[[FBAduioViewController alloc]init];
    
    FBNavigationViewController *aduioNa=[[FBNavigationViewController alloc]initWithRootViewController:aduioVC];
    aduioNa.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:100];
    aduioNa.tabBarItem.title=@"图片";
    
    
    FBAodiceViewController *adoiceVC=[[FBAodiceViewController alloc]init];
    
    FBNavigationViewController *adoiceNa=[[FBNavigationViewController alloc]initWithRootViewController:adoiceVC];
    adoiceNa.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:100];
    adoiceNa.tabBarItem.title=@"图片";
    
    
    
    self.viewControllers=@[imgNa,textNa,adoiceNa,aduioNa];
    // Do any additional setup after loading the view.
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
