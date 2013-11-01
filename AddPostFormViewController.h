//
//  AddPostFormViewController.h
//  SocialNetwork
//
//  Created by Christina Green on 10/24/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostModel.h"

@protocol AddPostFormViewControllerDelegate <NSObject>

@required

-(void)addPost:(PostModel *)post;

@end


// @property (nonatomic, strong) PostModel *addPost;

// -(void)addPostEntered:(NSMutableArray *)addPost;



// -(void)userNameEntered:(NSString *)userName;
// -(void)titleEntered:(NSString *)title;
// -(void)contentEntered:(NSString *)content;
// -(void)timeStampEntered:(NSDate *)timeStamp;


@interface AddPostFormViewController : UIViewController

@property (nonatomic, weak) PostModel *post;

@property (nonatomic, weak) IBOutlet UITextField *userNameTextField;
@property (nonatomic, weak) IBOutlet UITextField *titleTextField;
@property (nonatomic, weak) IBOutlet UITextField *contentTextField;
@property (nonatomic, weak) IBOutlet UITextField *timeStamp;

@property(nonatomic,weak) id<AddPostFormViewControllerDelegate> delegate;


//- (IBAction)submitPressed:(id)sender;
// -(IBAction)cancelPressed;



// - (IBAction)closeModal:(UIButton *)sender {
   // [self dissmissViewControllerAnimated:YES completion:^{
     //   NSLog(@“Modal Dismissed”);
   // }];
// }

@end
