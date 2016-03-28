//
//  WebSiteTabbarController.m
//  MyWebSite
//
//  Created by DW on 16/3/24.
//  Copyright © 2016年 DW. All rights reserved.
//

#import "WebSiteTabbarController.h"
#import "WeddingPhotoViewController.h"
#import "HostSiteViewController.h"
#import "UIImage+image.h"
#import "DWNavigationController.h"
@implementation WebSiteTabbarController
-(void)viewDidLoad
{
    //设置Tabbar里面的两个标签
    HostSiteViewController *HSViewController = [[HostSiteViewController alloc]init];
    [self addChildViewController:HSViewController addChildItemName:@"HomeSite" addChildItemImage:[UIImage
     imageWithOriginalName:@"host_WebSite"] addChildSelectItemImage:[UIImage imageNamed:@"host_WebSite"]];
    WeddingPhotoViewController *WPViewController = [[WeddingPhotoViewController alloc]init];
    [self addChildViewController:WPViewController addChildItemName:@"Wedding" addChildItemImage:[UIImage imageWithOriginalName:@"host_WeddingPhoto"] addChildSelectItemImage:[UIImage imageNamed:@"host_WeddingPhoto"]];
}
-(void)addChildViewController:(UIViewController *)childController addChildItemName:(NSString *)name addChildItemImage:(UIImage *)image addChildSelectItemImage:(UIImage *)SImage
{
    childController.tabBarItem.title = name;
    childController.tabBarItem.image = image;
    childController.tabBarItem.selectedImage = SImage;
    //如果通过模型设置控件的文字颜色，只能通过文本属性（富文本：颜色，字体）
    NSMutableDictionary *att = [[NSMutableDictionary alloc]init];
    [att setObject:[UIColor blackColor] forKey:NSForegroundColorAttributeName];
    [childController.tabBarItem setTitleTextAttributes:att forState:UIControlStateNormal];
    [self addChildViewController:childController];
    //设置导航栏
    DWNavigationController *nav = [[DWNavigationController alloc]initWithRootViewController:childController];
    [self addChildViewController:nav];
    
}
@end
