//
//  FBTools.h
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FBTools : NSObject

/**
 *  字典数据取值格式
 *
 *  @param keyString 字典key值
 *  @param dict      字典
 *
 *  @return 取值的字符  string
 */
+(NSString *)dictValueString:(NSString *)keyString andDict:(NSDictionary *)dict;

/**
 *  计算文字大小
 *
 *  @param size size
 *  @param fontSize  字体大小
 *
 *  @return <#return value description#>
 */
+(CGSize)stringWidthAndHeight:(CGSize)size andString:(NSString *)str andFontSize:(CGFloat)fontSize;
@end
