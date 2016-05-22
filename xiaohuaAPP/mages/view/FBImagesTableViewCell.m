//
//  FBImagesTableViewCell.m
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import "FBImagesTableViewCell.h"
#import "UIImageView+AFNetworking.h"
#import "FBImageShowModel.h"
@implementation FBImagesTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)initWithCell:(FBImageShowModel *)model
{
    [self.theAvgImg setImageWithURL:[NSURL URLWithString:model.theAvgImg]];
    self.theName.text=model.theName;
    self.theTime.text=model.theCreate;
    self.theContent.text=model.theText;
    [self.theShowImg setImageWithURL:[NSURL URLWithString:model.theImgUrl]];
    
}
@end
