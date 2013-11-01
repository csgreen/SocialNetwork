//
//  PostTableViewCell.m
//  SocialNetwork
//
//  Created by Christina Green on 10/21/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import "PostTableViewCell.h"


@implementation PostTableViewCell

// @synthesize post, userName, title, content, timeStamp;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
// added in class Oct 28th 2013

- (void)setLabelValuesWithPost:(PostModel *)post
{
   // self.post = post;
    _post = post;
    _userName.text = _post.userName;
    _title.text = _post.title;
    _content.text = _post.content;
    _timeStamp.text = [_post stringFromDate:_post.timeStamp];
}


    


// way to format date
// NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
// [dateFormatter setDateFormat:@"hh:mm a"];
// NSString ??????
//OR can convert date to string with a category


@end
