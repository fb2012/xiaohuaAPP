//
//  FBImageShowModel.h
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FBImageShowModel : NSObject
/**
 *  用户
 */
@property(strong,nonatomic)NSString *theName;
/**
 *  点赞的数量

 */
@property(strong,nonatomic)NSString *theLove;
/**
 *  点踩的数量

 */
@property(strong,nonatomic)NSString *theHate;
/**
 *  创建时间
 */
@property(strong,nonatomic)NSString *theCreate;
@property(strong,nonatomic)NSString *theID;
/**
 *  头像
 */
@property(strong,nonatomic)NSString *theAvgImg;
/**
 *  是否是gif
 */
@property(assign,nonatomic)BOOL isGif;

/**
 *  内容
 */
@property(strong,nonatomic)NSString *theText;

@property(strong,nonatomic)NSString *theImgUrl;

@property(strong,nonatomic)NSString *theVidoTime;
@property(strong,nonatomic)NSString *theVidoURL;
@property(strong,nonatomic)NSString *thevoiceTime;
@property(strong,nonatomic)NSString *theVoiceURL;
@property(strong,nonatomic)NSString *theWeiXInURL;


-(instancetype)initWithDict:(NSDictionary *)dict;



+(void)getListType:(NSString *)type andPage:(NSInteger)page andTitle:(NSString *)keys andSuccess:(void(^)(NSArray *relust,BOOL isNext))success andFail:(void(^)(NSString *errMsg,id errorObj))fail;

@end
