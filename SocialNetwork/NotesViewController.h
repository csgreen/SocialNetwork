//
//  NotesViewController.h
//  SocialNetwork
//
//  Created by Christina Green on 10/28/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotesViewController : UIViewController

@end


//notes are below
// in editviewcontroller

@protocol PostEditViewControllerDelegate <NSObject>

@optional
- (void)reloadTheTable;
@end
