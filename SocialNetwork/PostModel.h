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

@end
