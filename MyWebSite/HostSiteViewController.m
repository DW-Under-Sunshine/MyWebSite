//
//  HostSiteViewController.m
//  MyWebSite
//
//  Created by DW on 16/3/25.
//  Copyright © 2016年 DW. All rights reserved.
//

#import "HostSiteViewController.h"
//#import "DWPopImageView.h"
//#import "ClickViewController.h"
#import "BlurEffectMenu.h"
@interface HostSiteViewController ()
//@property (nonatomic,strong) ClickViewController *popCon;
@property (nonatomic,strong) UIButton *btn;
@end
@implementation HostSiteViewController

//-(ClickViewController *)popCon
//{
//    if (_popCon ==nil) {
//        _popCon = [[ClickViewController alloc]init];
//    }
//    return _popCon;
//    
//}
-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //设置导航栏
    [self setUpNavgationBar];
    
}

-(UIButton *)btn
{
    if (_btn == nil) {
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
    }
    return _btn;
}
-(void)setUpNavgationBar
{
    //添加左边的item
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"mine" style:UIBarButtonSystemItemAdd target:nil action:nil];
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.btn setTitle:@"HomePage" forState:UIButtonTypeCustom];
    [self.btn setTitleColor:[UIColor blueColor] forState:UIButtonTypeCustom];
    [self.btn addTarget:self action:@selector(titleClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.btn setTitleEdgeInsets:UIEdgeInsetsMake(10, 40, 10, 40)];
//    self.btn.titleLabel.adjustsFontSizeToFitWidth = NO;
    self.navigationItem.titleView = self.btn;
}

-(void)titleClick :(UIButton *) btn
{
    btn.selected = !btn.selected;
//    DWCoverView *cover = [DWCoverView show];
//    cover.delegate = self;
//    
//    //弹出菜单
//    CGFloat popW = 200;
//    CGFloat popX = (self.view.frame.size.width - 200)*0.5;
//    CGFloat popH = popW;
//    CGFloat popY = 55;
//    DWPopImageView *menu = [DWPopImageView showInRect:CGRectMake(popX,popY,popW,popH)];
//    menu.contentView = self.popCon.view;
//首页btn设置图钉效果
    BlurEffectMenuItem *MyhomeSitePage=[[BlurEffectMenuItem alloc]init];
    [MyhomeSitePage setTitle:@"HomePage"];
    [MyhomeSitePage setIcon:[UIImage imageNamed:@"addMatters"]];
    BlurEffectMenuItem *addMattersItem=[[BlurEffectMenuItem alloc]init];
    [addMattersItem setTitle:@"IOS"];
    [addMattersItem setIcon:[UIImage imageNamed:@"addMatters"]];
    
    BlurEffectMenuItem *addSchedulesItem=[[BlurEffectMenuItem alloc]init];
    [addSchedulesItem setTitle:@"Web"];
    [addSchedulesItem setIcon:[UIImage imageNamed:@"addSchedule"]];
    
    BlurEffectMenuItem *setupChatItem=[[BlurEffectMenuItem alloc]init];
    [setupChatItem setTitle:@"Python"];
    [setupChatItem setIcon:[UIImage imageNamed:@"setupChat"]];
    
    BlurEffectMenuItem *searchContactsItem=[[BlurEffectMenuItem alloc]init];
    [searchContactsItem setTitle:@"BigData"];
    [searchContactsItem setIcon:[UIImage imageNamed:@"searchContacts"]];
    BlurEffectMenu *menu=[[BlurEffectMenu alloc]initWithMenus:@[MyhomeSitePage,addMattersItem,addSchedulesItem,setupChatItem,searchContactsItem]];
    [menu setDelegate:self];
    menu.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [menu setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:menu animated:YES completion:nil];
//    clickPopController *CVC = [[clickPopController alloc]init];
//    [CVC btnClicked];
    
}
//- (void)coverDidClickCover:(DWCoverView *)cover
//{
//    // 隐藏pop菜单
////    [CZPopMenu hide];
//    
////    _titleButton.selected = NO;
//    [DWPopImageView hide];
//    
//}

#pragma mark - BlurEffectMenu Delegate
- (void)blurEffectMenuDidTapOnBackground:(BlurEffectMenu *)menu{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)blurEffectMenu:(BlurEffectMenu *)menu didTapOnItem:(BlurEffectMenuItem *)item{
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"item.title:%@",item.title);
    if ([item.title isEqualToString:@"IOS"])
    {
        [self.btn setTitle:@"IOS" forState:UIButtonTypeCustom];
    }else if ([item.title isEqualToString:@"Web"])
    {
        [self.btn setTitle:@"Web" forState:UIButtonTypeCustom];
    }else if ([item.title isEqualToString:@"Python"])
    {
        [self.btn setTitle:@"Python" forState:UIButtonTypeCustom];
    }else if ([item.title isEqualToString:@"BigData"])
    {
        [self.btn setTitle:@"BigData" forState:UIButtonTypeCustom];
    }else if ([item.title isEqualToString:@"HomePage"])
    {
        [self.btn setTitle:@"HomePage" forState:UIButtonTypeCustom];
    }
}
@end
