//
//  SecondLevelViewController.m
//  tableview
//
//  Created by xyooyy on 14-9-9.
//  Copyright (c) 2014年 黄晓彤. All rights reserved.
//

#import "SecondLevelViewController.h"
@interface SecondLevelViewController ()
{
}

@end

@implementation SecondLevelViewController

-(id)init
{
    if(self=[super init])
    {
        
    }
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    mTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    [self.view addSubview:mTableView];
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor redColor];
}

@end
