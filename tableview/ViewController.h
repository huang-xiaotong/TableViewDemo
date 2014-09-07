//
//  ViewController.h
//  tableview
//
//  Created by xyooyy on 14-9-7.
//  Copyright (c) 2014年 黄晓彤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITabBarControllerDelegate, UITableViewDataSource>
{
    UITableView *mTableView;
//    NSArray *listData;
    
    
//}
//{
    NSArray *listData;
}
@property (nonatomic, retain) NSArray *listData;
@end
