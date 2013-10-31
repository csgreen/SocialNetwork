//
//  EditPostViewController.h
//  SocialNetwork
//
//  Created by Christina Green on 10/28/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostModel.h"

@interface EditPostViewController : UIViewController

@property (nonatomic, weak) PostModel *post;

@property (nonatomic, weak) IBOutlet UITextField *userName

@end
