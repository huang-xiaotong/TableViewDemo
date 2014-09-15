//
//  ViewController.h
//  tableview
//
//  Created by xyooyy on 14-9-7.
//  Copyright (c) 2014年 黄晓彤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
{
    UITableView *mTableView;
}
@property (nonatomic, retain) NSArray *listData;
@property (nonatomic, retain) NSArray *listDatal;
@property (nonatomic, retain) NSArray *listDatai;
@end
