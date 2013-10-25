//
//  PostTableViewCell.h
//  SocialNetwork
//
//  Created by Christina Green on 10/21/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostModel.h"


@interface PostTableViewCell : UITableViewCell {
    PostModel *post;
    
    UILabel *userName;
    UILabel *title;
    UILabel *content;
    UILabel *timeStamp;
}

@property (nonatomic) PostModel *post;

@property (nonatomic) UILabel *userName;
@property (nonatomic) UILabel *title;
@property (nonatomic) UILabel *content;
@property (nonatomic) UILabel *timeStamp;

@end
