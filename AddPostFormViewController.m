//
//  AddPostFormViewController.m
//  SocialNetwork
//
//  Created by Christina Green on 10/24/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import "AddPostFormViewController.h"

@interface AddPostFormViewController ()

@end

@implementation AddPostFormViewController

@synthesize delegate;


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
    
    userNameTextField.text = @"";
    titleTextField.text = @"";
    contentTextField.text = @"";
  //  timeStampTextField.text = @"";
    [userNameTextField becomeFirstResponder];
    [titleTextField becomeFirstResponder];
    [contentTextField becomeFirstResponder];
 //   [timeStampTextField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(IBAction)cancelPressed

-(IBAction)submitPressed
{
    
    
        [delegate addPostEntered:addPost
         
        // [delegate userNameEntered:userNameTextField.text];
        // [delegate titleEntered:titleTextField.text];
        // [delegate contentEntered:contentTextField.text];
        // [delegate timeStampEntered:[timeStampTextField.text intValue]];
    }
    
  
}
// - (IBAction)closeModal:(UIButton *)sender {
// [self dissmissViewControllerAnimated:YES completion:^{
//   NSLog(@“Modal Dismissed”);
@end
