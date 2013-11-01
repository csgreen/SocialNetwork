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
    
    _userNameTextField.text = @"";
    _titleTextField.text = @"";
    _contentTextField.text = @"";
   // timeStampTextField.text = [_post stringFromDate:_post.timeStamp];
    [_userNameTextField becomeFirstResponder];
    [_titleTextField becomeFirstResponder];
    [_contentTextField becomeFirstResponder];
 //   [timeStampTextField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)submitPressed:(id)sender
//{
//    _post.userName = userNameTextField.text;
//    _post.title = titleTextField.text;
//    _post.content = contentTextField.text;
//    _post.timeStamp = [NSDate date];
//    
//   
//    [self dismissViewControllerAnimated:YES completion:^{
//        if ([self.delegate respondsToSelector:@selector(reloadTheTable)]) {
//            [self.delegate reloadTheTable];
//        }
//    }];
//}

- (IBAction)submitPressed:(id)sender;
{
    _post.userName = _userNameField.text;
    _post.title = _titleField.text;
    _post.content = _contentField.text;
    _post.timeStamp = [NSDate date];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end

//-(IBAction)cancelPressed


//{
    
    
   //     [delegate addPostEntered:addPost
         
        // [delegate userNameEntered:userNameTextField.text];
        // [delegate titleEntered:titleTextField.text];
        // [delegate contentEntered:contentTextField.text];
        // [delegate timeStampEntered:[timeStampTextField.text intValue]];
//}
    
  

// - (IBAction)closeModal:(UIButton *)sender {
// [self dissmissViewControllerAnimated:YES completion:^{
//   NSLog(@“Modal Dismissed”);

