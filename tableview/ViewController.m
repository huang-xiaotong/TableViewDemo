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

    NSArray *arrayt = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];//创建数组
    self.listData = arrayt;
    NSArray *arrayl = [[NSArray alloc]initWithObjects:@"one", @"two", @"three", @"four", @"five", @"six", nil];
    self.listDatal = arrayl;
//    NSDictionary * dict = [[NSDictionary alloc]initWithObjectsAndKeys:@"one", @"1", @"two",@"2", @"three",@"3",nil];
//    [dict count];
//    NSArray *values = [dict allValues];
    
    NSArray *arraym = [[NSArray alloc]initWithObjects:@"touxiang1.png", @"touxiang2.jpg", @"meitu@2x.png", @"touxiang3.jpg", @"touxiang4.jpg", @"touxiang5.jpg", nil];
    self.listDatai = arraym;
    
    
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
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
        //创建第一个label
        CGRect labelRect = CGRectMake(120, 10,130, 20);
        UILabel *label = [[UILabel alloc] initWithFrame:labelRect];
        if(indexPath.row == 0){
            label.text = [self.listData objectAtIndex:indexPath.row];
            label.textColor = [UIColor redColor];
        }
        else if(indexPath.row == 1){
            label.text = [self.listData objectAtIndex:indexPath.row];
            label.textColor = [UIColor greenColor];}
        else{
            label.text = [self.listData objectAtIndex:indexPath.row];
            label.textColor = [UIColor blueColor];
        }
        
        [cell.contentView addSubview:label];
//        label.textColor = [UIColor redColor];
//        label.backgroundColor = [UIColor blueColor];
        label.font = [UIFont boldSystemFontOfSize:16];
        //创建第二个label
        CGRect secondlabelRect = CGRectMake(120, 30, 100, 20);
        UILabel *secondlabel = [[UILabel alloc] initWithFrame:secondlabelRect];
        secondlabel.text = [self.listDatal objectAtIndex:indexPath.row];
        [cell.contentView addSubview:secondlabel];
        secondlabel.textColor = [UIColor grayColor];
        secondlabel.font = [UIFont boldSystemFontOfSize:12];
        //创建button
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(150,30,50,20);
        [button setTitle:@"点击" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blackColor];
        cell.accessoryView = button;

        UIImage *image = [[UIImage alloc] init];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(50, 10, 45, 45);
        imageView.image =[UIImage imageNamed:[self.listDatai objectAtIndex:indexPath.row]];
//        imageView.image = [UIImage imageNamed:@"touxiang1.png"];
        [cell.contentView addSubview:imageView];
        }
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:row];
    cell.detailTextLabel.text = @"test";
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    cell.imageView.image = [UIImage imageNamed:@"meitu@2x.png"];
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