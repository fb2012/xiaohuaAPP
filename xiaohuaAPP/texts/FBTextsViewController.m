//
//  FBTextsViewController.m
//  xiaohuaAPP
//
//  Created by fengbing on 16/5/22.
//  Copyright © 2016年 fengbing. All rights reserved.
//

#import "FBTextsViewController.h"
#import "FBTextTableViewCell.h"
#import "FBImageShowModel.h"
@interface FBTextsViewController ()

@end

@implementation FBTextsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self requestData];
    
    // Do any additional setup after loading the view.
}

-(void)requestData
{
    __weak FBTextsViewController *VC=self;
    
    [FBImageShowModel getListType:@"31" andPage:1 andTitle:@"" andSuccess:^(NSArray *relust, BOOL isNext) {
        [VC.theData removeAllObjects];
        [VC.theData addObjectsFromArray:relust];
        dispatch_async(dispatch_get_main_queue(), ^{
           
            [VC.tableView reloadData];
        });
    } andFail:^(NSString *errMsg, id errorObj) {
        ;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    static NSString *dequStr=@"cellID";
    FBTextTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:dequStr];
    if(!cell)
    {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"FBTextTableViewCell" owner:self options:nil] lastObject];
        
    }
    [cell initWithCell:self.theData[indexPath.row]];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160;
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
