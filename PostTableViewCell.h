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

@property (nonatomic, weak) PostModel *post;

@property (nonatomic, strong) IBOutlet UILabel *userName;
@property (nonatomic, strong) IBOutlet UILabel *title;
@property (nonatomic, strong) IBOutlet UILabel *content;
@property (nonatomic) IBOutlet UILabel *timeStamp;

- (void)setLabelValuesWithPost:(PostModel *)post;
// add IBOutlets to properties to make them tie to storyboard (and get hooks)


@end
