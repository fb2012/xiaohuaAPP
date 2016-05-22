//
//  FBImagesTableViewCell.h
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FBImageShowModel;
@interface FBImagesTableViewCell : UITableViewCell
@property(weak,nonatomic)IBOutlet UILabel *theName;
@property(weak,nonatomic)IBOutlet UIImageView *theAvgImg;
@property(weak,nonatomic)IBOutlet UILabel *theTime;
@property(weak,nonatomic)IBOutlet UIImageView *theShowImg;
@property(weak,nonatomic)IBOutlet UILabel *theContent;


-(void)initWithCell:(FBImageShowModel *)model;

@end
