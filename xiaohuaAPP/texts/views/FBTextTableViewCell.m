//
//  FBTextTableViewCell.m
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import "FBTextTableViewCell.h"
#import "FBImageShowModel.h"
#import "UIImageView+AFNetworking.h"
@implementation FBTextTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)initWithCell:(FBImageShowModel *)model
{
    [self.theAgv setImageWithURL:[NSURL URLWithString:model.theAvgImg]];
    self.theName.text=model.theName;
    self.theTime.text=model.theCreate;
    self.theContent.text=model.theText;
    
    
}
@end
