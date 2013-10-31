//
//  PostTableViewController.h
//  SocialNetwork
//
//  Created by Christina Green on 10/21/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostModel.h"
#import "PostTableViewCell.h"

@interface PostTableViewController : UITableViewController <UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *posts;

//@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
