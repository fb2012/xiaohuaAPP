//
//  FBNetWork.m
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/21.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import "FBNetWork.h"
#import "AFNetworking.h"
#import "FBNetConfig.h"
@implementation FBNetWork


+(NSDictionary *)paramsAddSeciry:(NSDictionary *)param
{
    NSMutableDictionary *theTempdict=[NSMutableDictionary dictionary];
    if(param)
    {
        [theTempdict setDictionary:param];
    }
    
    [theTempdict setObject:xiaohuAPIId forKey:@"showapi_appid"];
    [theTempdict setObject:@"31596ceab92740179ce84c1662be6eba" forKey:@"showapi_sign"];
    
    //
    NSDateFormatter *formate=[[NSDateFormatter alloc]init];
    formate.dateFormat=@"yyyyMMddHHmmss";
    NSString *theDate=[formate stringFromDate:[NSDate date]];
    
    
    [theTempdict setObject:theDate forKey:@"showapi_timestamp"];
    [theTempdict setObject:@"md5" forKey:@"showapi_sign_method"];
    
    [theTempdict setObject:@"0" forKey:@"showapi_res_gzip"];

    return theTempdict;
    
}
#pragma mark 应用级参数
-(NSDictionary *)systemParams
{
    NSMutableDictionary *theSystemDict=[NSMutableDictionary dictionary];
    [theSystemDict setObject:xiaohuAPIId forKey:@"showapi_appid"];
    [theSystemDict setObject:@"31596ceab92740179ce84c1662be6eba" forKey:@"showapi_sign"];
    
//
    NSDateFormatter *formate=[[NSDateFormatter alloc]init];
    formate.dateFormat=@"yyyyMMddHHmmss";
    NSString *theDate=[formate stringFromDate:[NSDate date]];
    
    
    [theSystemDict setObject:theDate forKey:@"showapi_timestamp"];
    [theSystemDict setObject:@"md5" forKey:@"showapi_sign_method"];
    
    [theSystemDict setObject:@"0" forKey:@"showapi_res_gzip"];

    return theSystemDict;
    
}
/**
 *  post  请求
 *
 *  @param params  参数
 *  @param action  接口
 */
+(void)postRequestParams:(NSDictionary *)params andAction:(NSString *)action andProgress:(void(^)(NSProgress *progress))progress andSuccess:(void(^)(id respones))success andFail:(void(^)(id errorS))fail;
{
 
    
    
    NSString *urlS=[NSString stringWithFormat:@"%@%@",baseURL,action];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval=60;
    manager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"application/json", @"text/html",@"text/json", @"text/javascript", nil];;
    
    /**
     self.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html",@"text/json", @"text/javascript", nil];

     */
    DLog(@"params=%@",params);
    
    [manager POST:urlS parameters:[self paramsAddSeciry:params] progress:^(NSProgress * _Nonnull uploadProgress) {
        
        progress(uploadProgress);
        
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        DLog(@"respon=%@",responseObject);
        success(responseObject[@"showapi_res_body"][@"pagebean"]);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
        
    }];
}


@end
