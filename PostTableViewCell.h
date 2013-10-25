//
//  PostTableViewCell.h
//  SocialNetwork
//
//  Created by Christina Green on 10/21/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostModel.h"


@interface PostTableViewCell : UITableViewCell

@property (nonatomic, strong) PostModel *post;

@property (nonatomic, strong) IBOutlet UILabel *userName;
@property (nonatomic) IBOutlet UILabel *title;
@property (nonatomic) IBOutlet UILabel *content;
@property (nonatomic) IBOutlet UILabel *timeStamp;

@end
