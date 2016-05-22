//
//  FBNetWork.h
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/21.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FBNetWork : NSObject


/**
 *  post  请求
 *
 *  @param params  参数
 *  @param action  接口
 */
+(void)postRequestParams:(NSDictionary *)params andAction:(NSString *)action andProgress:(void(^)(NSProgress *progress))progress andSuccess:(void(^)(id respones))success andFail:(void(^)(id errorS))fail;

@end
