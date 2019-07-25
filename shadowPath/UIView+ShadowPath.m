//
//  UIView+ShadowPath.m
//  nongpi
//
//  Created by GuoWei Li on 2019/6/21.
//  Copyright © 2019 shengnong. All rights reserved.
//

#import "UIView+ShadowPath.h"

@implementation UIView (ShadowPath)

/*
 * shadowColor 阴影颜色
 *
 * shadowOpacity 阴影透明度，默认0
 *
 * shadowRadius  阴影半径，默认3
 *
 * shadowPathSide 设置哪一侧的阴影，
 
 * shadowPathWidth 阴影的宽度，
 
 */

- (void)setShadowPathWithShadowColor:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowSide:(UIShadowDirection)shadowPathSide shadowPathWidth:(CGFloat)shadowPathWidth{
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOpacity = shadowOpacity;
    if (shadowRadius == 0) {
        shadowRadius = 3;
    }
    self.layer.shadowRadius =  shadowRadius;
    self.layer.shadowOffset = CGSizeZero;
    CGRect shadowRect;
    CGFloat originX = 0;
    CGFloat originY = 0;
    CGFloat originW = self.bounds.size.width;
    CGFloat originH = self.bounds.size.height;
    
    switch (shadowPathSide) {
        case UIShadowDirectionTop:
            shadowRect  = CGRectMake(originX, originY - shadowPathWidth/2, originW,  shadowPathWidth);
            break;
        case UIShadowDirectionBottom:
            shadowRect  = CGRectMake(originX, originH -shadowPathWidth/2, originW, shadowPathWidth);
            break;
            
        case UIShadowDirectionLeft:
            shadowRect  = CGRectMake(originX - shadowPathWidth/2, originY, shadowPathWidth, originH);
            break;
            
        case UIShadowDirectionRight:
            shadowRect  = CGRectMake(originW - shadowPathWidth/2, originY, shadowPathWidth, originH);
            break;
        case UIShadowDirectionNoTop:
            shadowRect  = CGRectMake(originX -shadowPathWidth/2, originY +1, originW +shadowPathWidth,originH + shadowPathWidth/2 );
            break;
        case UIShadowDirectionAllSide:
            shadowRect  = CGRectMake(originX - shadowPathWidth/2, originY - shadowPathWidth/2, originW +  shadowPathWidth, originH + shadowPathWidth);
            break;
            
    }
    
    UIBezierPath *path =[UIBezierPath bezierPathWithRect:shadowRect];
    self.layer.shadowPath = path.CGPath;
}

@end
