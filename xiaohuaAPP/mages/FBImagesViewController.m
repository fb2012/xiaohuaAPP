//
//  FBImagesViewController.m
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import "FBImagesViewController.h"
#import "FBImagesTableViewCell.h"
#import "FBImageShowModel.h"
@interface FBImagesViewController ()

@end

@implementation FBImagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self request];
    // Do any additional setup after loading the view.
}
-(void)request
{
    __weak FBImagesViewController *vc=self;
    
    [FBImageShowModel getListType:@"10" andPage:1 andTitle:@"" andSuccess:^(NSArray *relust, BOOL isNext) {
        [vc.theData removeAllObjects];
        [vc.theData addObjectsFromArray:relust];
        dispatch_async(dispatch_get_main_queue(), ^{
           
            [vc.tableView reloadData];
        });
    } andFail:^(NSString *errMsg, id errorObj) {
        ;
    }];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.theData.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *deque=@"cellID";
    FBImagesTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:deque];
    if(!cell)
    {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"FBImagesTableViewCell" owner:self options:nil] lastObject];
    }
    [cell initWithCell:self.theData[indexPath.row]];
    
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 193;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
