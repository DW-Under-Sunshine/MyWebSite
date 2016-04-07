//
//  WeddingPhotoViewController.m
//  MyWebSite
//
//  Created by DW on 16/3/24.
//  Copyright © 2016年 DW. All rights reserved.
//

#import "WeddingPhotoViewController.h"
#import "MBProgressHUD+MJ.h"
@implementation WeddingPhotoViewController
//先展示一个网页
-(BOOL)prefersStatusBarHidden
{
    return YES;
}

-(MBProgressHUD *)MB
{
    if (_MB == nil) {
        _MB = [[MBProgressHUD alloc]init];
    }
    return _MB;
}
-(void)viewDidLoad
{
    [super viewDidLoad];
    UIWebView *webView = [[UIWebView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    NSString *urlStr = [NSString stringWithFormat:@"http://www.dogbroblog.com/WeddingPhoto/chevereto/"];
    NSURL *url = [NSURL URLWithString:urlStr];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    webView.delegate = self;
}

#pragma mark -uiwebView代理
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [MBProgressHUD showMessage:@"正在玩命加载"];
//    //- (void)hide:(BOOL)animated afterDelay:(NSTimeInterval)delay;
//    [[[MBProgressHUD alloc] init] hide:YES afterDelay:2.0];
//    self.MB.labelText = @"正在玩命加载";
////    [self.MB show:YES];
//    [self.MB show:YES];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
//    [self.MB hide:YES];
    [MBProgressHUD hideHUD];
}


@end
