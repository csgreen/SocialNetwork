//
//  PostTableViewCell.m
//  SocialNetwork
//
//  Created by Christina Green on 10/21/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import "PostTableViewCell.h"

@interface PostTableViewCell (SubviewFrames)
- (CGRect)_userNameFrame;
- (CGRect)_titleFrame;
- (CGRect)_contentFrame;
- (CGRect)_timeStampFrame;
@end



@implementation PostTableViewCell

@synthesize post, userName, title, content, timeStamp;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        userName = [[UILabel alloc] initWithFrame:CGRectZero];
        [userName setFont:[UIFont systemFontOfSize:12.0]];
        [userName setTextColor:[UIColor darkGrayColor]];
        [userName setHighlightedTextColor:[UIColor whiteColor]];
        [self.contentView addSubview:userName];
        
        title = [[UILabel alloc] initWithFrame:CGRectZero];
        [title setFont:[UIFont systemFontOfSize:12.0]];
        [title setTextColor:[UIColor blackColor]];
        [title setHighlightedTextColor:[UIColor whiteColor]];
	    [self.contentView addSubview:title];
        
        content = [[UILabel alloc] initWithFrame:CGRectZero];
        [content setFont:[UIFont boldSystemFontOfSize:14.0]];
        [content setTextColor:[UIColor blackColor]];
        [content setHighlightedTextColor:[UIColor whiteColor]];
        [self.contentView addSubview:content];
        
        timeStamp = [[UILabel alloc] initWithFrame:CGRectZero];
        [timeStamp setFont:[UIFont boldSystemFontOfSize:14.0]];
        [timeStamp setTextColor:[UIColor blackColor]];
        [timeStamp setHighlightedTextColor:[UIColor whiteColor]];
        [self.contentView addSubview:timeStamp];
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
    _userNameLabel.text = _post.userName;
    _titleLabel.text = _post.title;
    _contentLabel.text = _post.content;
    _timeStampLabel.text = dateString;
}
-(NSString *)stringFromDate:(NSDate *)incomingDate
{
    // date formatter
}

    
}

// way to format date
// NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
// [dateFormatter setDateFormat:@"hh:mm a"];
// NSString ??????
//OR can convert date to string with a category


@end
