//
//  AddPostFormViewController.h
//  SocialNetwork
//
//  Created by Christina Green on 10/24/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostModel.h"

@protocol AddPostDelegate <NSObject>
@required

-(void)addPost:(PostModel *)post;

@end

// @property (nonatomic, strong) PostModel *addPost;

// -(void)addPostEntered:(NSMutableArray *)addPost;



// -(void)userNameEntered:(NSString *)userName;
// -(void)titleEntered:(NSString *)title;
// -(void)contentEntered:(NSString *)content;
// -(void)timeStampEntered:(NSDate *)timeStamp;


@interface AddPostFormViewController : UIViewController {

    IBOutlet UITextField *userNameTextField;
    IBOutlet UITextField *titleTextField;
    IBOutlet UITextField *contentTextField;
 //   IBOutlet UITextField *timeStamp;
    
    

}

-(IBAction)submitPressed;
// -(IBAction)cancelPressed;

@property(nonatomic,strong) NSObject < AddPostDelegate > *delegate;

// - (IBAction)closeModal:(UIButton *)sender {
   // [self dissmissViewControllerAnimated:YES completion:^{
     //   NSLog(@“Modal Dismissed”);
   // }];
// }

@end
