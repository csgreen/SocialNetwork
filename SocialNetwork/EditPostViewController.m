//
//  EditPostViewController.m
//  SocialNetwork
//
//  Created by Christina Green on 10/28/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import "EditPostViewController.h"

@interface EditPostViewController ()

@end

@implementation EditPostViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _userNameField.text = _post.userName;
    _titleField.text = _post.title;
    _contentField.text = _post.content;
   // _timeStampField.text = [_post stringFromDate:_post ?????]
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitPost:(id)sender
{
    _post.userName = _userNameField.text;
    _post.title = _titleField.text;
    _post.content = _contentField.text;
    _post.timeStamp = [NSDate date];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}
@end
