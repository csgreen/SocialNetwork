//
//  PostModel.h
//  SocialNetwork
//
//  Created by Christina Green on 10/21/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PostModel : NSObject {
    
}

@property (nonatomic) NSString *userName;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *content;
@property (nonatomic) NSDate *timeStamp;

- (instancetype)initWithUserName:(NSString *)userName andTitle:(NSString *)title andContent:(NSString *)content andDate:(NSDate *)timeStamp;

- (NSString *)stringFromDate:(NSDate *)incomingDate;

@end
