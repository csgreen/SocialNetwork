//
//  EditPostViewController.h
//  SocialNetwork
//
//  Created by Christina Green on 10/28/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostModel.h"

@protocol EditPostViewControllerDelegate <NSObject>

@optional

- (void)reloadTheTable;

@end

@interface EditPostViewController : UIViewController

@property (nonatomic, weak) PostModel *post;

@property (nonatomic, weak) IBOutlet UITextField *userNameField;
@property (nonatomic, weak) IBOutlet UITextField *titleField;
@property (nonatomic, weak) IBOutlet UITextField *contentField;
@property (nonatomic, weak) IBOutlet UITextField *timeStampField;

@property (nonatomic,weak) id<EditPostViewControllerDelegate> delegate;

- (IBAction)submitPost:(id)sender;

@end
