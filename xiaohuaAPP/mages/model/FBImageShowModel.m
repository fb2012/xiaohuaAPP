//
//  FBImageShowModel.m
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import "FBImageShowModel.h"

@implementation FBImageShowModel

-(instancetype)initWithDict:(NSDictionary *)dict
{
    if([super init])
    {
        self.theAvgImg=[FBTools dictValueString:@"profile_image" andDict:dict];
        self.theCreate=[FBTools dictValueString:@"create_time" andDict:dict];

        self.theHate=[FBTools dictValueString:@"hate" andDict:dict];

        self.theID=[FBTools dictValueString:@"id" andDict:dict];

        self.theImgUrl=[FBTools dictValueString:@"image0" andDict:dict];

        self.theLove=[FBTools dictValueString:@"love" andDict:dict];

        self.theName=[FBTools dictValueString:@"name" andDict:dict];
        self.theText=[FBTools dictValueString:@"text" andDict:dict];
        self.theVidoTime=[FBTools dictValueString:@"videotime" andDict:dict];
        self.theVidoURL=[FBTools dictValueString:@"video_url" andDict:dict];
        self.thevoiceTime=[FBTools dictValueString:@"voicetime" andDict:dict];
        self.theVoiceURL=[FBTools dictValueString:@"voiceuri" andDict:dict];
        self.theWeiXInURL=[FBTools dictValueString:@"weixin_url" andDict:dict];


        
        
    }
    return self;
}
+(void)getListType:(NSString *)type andPage:(NSInteger)page andTitle:(NSString *)keys andSuccess:(void(^)(NSArray *relust,BOOL isNext))success andFail:(void(^)(NSString *errMsg,id errorObj))fail
{
    [FBNetWork postRequestParams:@{@"type":type,@"page":[NSNumber numberWithInteger:page],@"title":keys} andAction:@"255-1" andProgress:^(NSProgress *progress) {
        ;
    } andSuccess:^(id respones) {
        NSMutableArray *theTempArr=[NSMutableArray array];
        if([respones[@"contentlist"] isKindOfClass:[NSArray class]])
        {
            for(NSDictionary *dic in respones[@"contentlist"])
            {
                FBImageShowModel *model=[[FBImageShowModel alloc]initWithDict:dic];
                [theTempArr addObject:model];
                
            }
            NSInteger pCount=[respones[@"allPages"] doubleValue];
            
            success(theTempArr,pCount>page);
            
        }
        ;
    } andFail:^(id errorS) {
        ;
    }];
}
@end
