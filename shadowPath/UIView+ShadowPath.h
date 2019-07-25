//
//  UIView+ShadowPath.h
//  nongpi
//
//  Created by GuoWei Li on 2019/6/21.
//  Copyright © 2019 shengnong. All rights reserved.
//


#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, UIShadowDirection) {
    UIShadowDirectionLeft = 0,
    UIShadowDirectionRight,
    UIShadowDirectionTop,
    UIShadowDirectionBottom,
    UIShadowDirectionNoTop,
    UIShadowDirectionAllSide
};

@interface UIView (ShadowPath)

/*
 * shadowColor 阴影颜色
 *
 * shadowOpacity 阴影透明度，默认0
 *
 * shadowRadius  阴影半径，默认3 注:shadowRadius值越小,阴影效果越差
 *
 * shadowPathSide 设置哪一侧的阴影，
 
 * shadowPathWidth 阴影的宽度，
 
 */

-(void)setShadowPathWithShadowColor:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowSide:(UIShadowDirection)shadowPathSide shadowPathWidth:(CGFloat)shadowPathWidth;

@end

NS_ASSUME_NONNULL_END
