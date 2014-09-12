//
//  ViewController.m
//  tableview
//
//  Created by xyooyy on 14-9-7.
//  Copyright (c) 2014年 黄晓彤. All rights reserved.
//

#import "ViewController.h"
#import "SecondLevelViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize listData;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    mTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    [self.view addSubview:mTableView];
    mTableView.delegate = self;
    mTableView.dataSource = self;

    NSArray *array = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17", nil];//创建数组
    self.listData = array;
    
    }
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60.0f;
}

- (void)viewDidUnload{
    self.listData = nil;
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - 
//实现TableView数据源方法
#pragma mark Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        CGRect labelRect = CGRectMake(120, 20, 200, 40);
        UILabel *label = [[UILabel alloc] initWithFrame:labelRect];
//        UIView * subview = [[UIView alloc] init];
        label.text = @"hello world!!!";
//        label.backgroundColor = [UIColor blueColor];
        label.textColor = [UIColor blueColor];
        label.font = [UIFont boldSystemFontOfSize:30];
//        [cell.contentView addSubview:subview];
        [cell.contentView addSubview:label];

        label.userInteractionEnabled = YES;
    }
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.imageView.image = [UIImage imageNamed:@"meitu@2x.png"];
    return cell;
   

}
#pragma mark -
#pragma mark Table View Delegate Methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {  
    SecondLevelViewController *nextController = [[SecondLevelViewController alloc]init];
    [self.navigationController pushViewController:nextController animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}
@end