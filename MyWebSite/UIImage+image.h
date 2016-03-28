//
//  UIImage+image.h
//  DW微博
//
//  Created by DW on 16/3/18.
//  Copyright © 2016年 DW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (image)
//instancetype默认会识别当前是哪个类或者对象调用，就会转化成对应的类的对象
//加载最原始的图片，没有渲染
+(instancetype)imageWithOriginalName:(NSString *)imageName;
+ (instancetype)imageWithStretchableName:(NSString *)imageName;
@end
