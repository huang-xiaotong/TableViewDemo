//
//  ViewController.m
//  tableview
//
//  Created by xyooyy on 14-9-7.
//  Copyright (c) 2014年 黄晓彤. All rights reserved.
//

#import "ViewController.h"

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

    NSArray *array = [[NSArray alloc]initWithObjects:@"one",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10", nil];//创建固定数组
    self.listData = array;
    [array release];//释放数组
//    [super viewDidLoad];
}
- (void)viewDidUnload{
//    [super viewDidUnload];

    self.listData = nil;
    [super viewDidUnload];
}
- (void)dealloc{
    [listData release];
    
    [super dealloc];
}


    
    //    UITableViewStylePlain,
    //    UITableViewStyleGrouped
    

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
}


#pragma mark - 
//实现TableView数据源方法
#pragma mark Table View Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:SimpleTableIdentifier];
    if (cell == nil){
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier ] autorelease];
    }
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:row];
    return cell;
}
//      reload tableView;
@end