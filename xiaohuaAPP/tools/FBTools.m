//
//  FBTools.m
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import "FBTools.h"

@implementation FBTools

/*
 * 判断是否为空
 */
+(NSString *)IsEmptString:(id )obj
{
    if (obj == nil || obj == [NSNull null] ||
        ([obj isKindOfClass:[NSString class]] && [obj length] == 0))
    {
        return @"";
    }
    else if ([obj isKindOfClass:[NSNumber class]])
    {
        return [obj stringValue];
    }
    return obj;
}
/**
 *  字典数据取值格式
 *
 *  @param keyString 字典key值
 *  @param dict      字典
 *
 *  @return 取值的字符  string
 */
+(NSString *)dictValueString:(NSString *)keyString andDict:(NSDictionary *)dict
{
    if(dict&&keyString)
    {
        return  [FBTools IsEmptString:dict[keyString]];
    }
    return @"";
    
    
}
/**
 *  计算文字大小
 *
 *  @param size size
 *  @param fontSize  字体大小
 *
 *  @return <#return value description#>
 */
+(CGSize)stringWidthAndHeight:(CGSize)size andString:(NSString *)str andFontSize:(CGFloat)fontSize
{
    CGSize tempSize=CGSizeZero;
    
    if([str length]>0)
    {
        
        tempSize=   [str boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]} context:nil].size;
        
        //  tempSize=[str sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]}];
    }
    return tempSize;
}
@end
