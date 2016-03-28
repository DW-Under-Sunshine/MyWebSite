//
//  UIImage+image.m
//  DW微博
//
//  Created by DW on 16/3/18.
//  Copyright © 2016年 DW. All rights reserved.
//

#import "UIImage+image.h"
//设置图片不受xcode自动改变
@implementation UIImage (image)
+(instancetype)imageWithOriginalName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}
+ (instancetype)imageWithStretchableName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}
@end
