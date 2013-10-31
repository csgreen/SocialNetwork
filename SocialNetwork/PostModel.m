//
//  PostModel.m
//  SocialNetwork
//
//  Created by Christina Green on 10/21/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import "PostModel.h"

@implementation PostModel

// use - and not + here
- (instancetype)initWithUserName:(NSString *)userName andTitle:(NSString *)title andContent:(NSString *)content andDate:(NSDate *)timeStamp
{
    //use self instead of [PostModel *post] here
    self = [super init];
    if (self) {
        self.userName = userName;
        self.title = title;
        self.content = content;
        self.timeStamp = timeStamp;
        
    }
    
    return self;
}
//format the date so it can be text
- (NSString *)stringFromDate:(NSDate *)incomingDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"hh:mm a"];
    NSString *dateString = [dateFormatter stringFromDate:_timeStamp];
    return dateString;
}


@end
