//
//  WebSiteTabbarController.m
//  MyWebSite
//
//  Created by DW on 16/3/24.
//  Copyright © 2016年 DW. All rights reserved.
//

#import "WebSiteTabbarController.h"
#import "WeddingPhotoViewController.h"
@implementation WebSiteTabbarController
-(void)viewDidLoad
{
    WeddingPhotoViewController *WPViewController = [[WeddingPhotoViewController alloc]init];
    [self addChildViewController:WPViewController addChildItemName:@"Wedding" addChildItemImage:[UIImage imageNamed:@"host_WeddingPhoto"]];
}
-(void)addChildViewController:(UIViewController *)childController addChildItemName:(NSString *)name addChildItemImage:(UIImage *)image
{
    childController.tabBarItem.title = name;
    childController.tabBarItem.image = image;
//    childController.tabBarItem.imageInsets = UIEdgeInsetsMake(<#CGFloat top#>, <#CGFloat left#>, <#CGFloat bottom#>, <#CGFloat right#>)
    [self addChildViewController:childController];
}
@end
