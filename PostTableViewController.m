//
//  PostTableViewController.m
//  SocialNetwork
//
//  Created by Christina Green on 10/21/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import "PostTableViewController.h"

@interface PostTableViewController ()

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation PostTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   //added in class oct 28th
  //  _posts = [[NSMutableArray alloc] init];
    

    PostModel *post = [[PostModel alloc] init];
    post.userName   = @"Christina";
    post.title = @"Day 1";
    post.content = @"It was an amazing day and I learned a ton.";
    post.timeStamp = [NSDate date];
    
    PostModel *post1 = [[PostModel alloc] init];
    post1.userName   = @"Christina";
    post1.title = @"Day 2";
    post1.content = @"I ate too much candy.";
    post1.timeStamp = [NSDate date];
    
    PostModel *post2 = [[PostModel alloc] init];
    post2.userName   = @"Christina";
    post2.title = @"Day 3";
    post2.content = @"I had to run home because I forgot my book.";
    post2.timeStamp = [NSDate date];
    
    PostModel *post3 = [[PostModel alloc] init];
    post3.userName   = @"Christina";
    post3.title = @"Day 4";
    post3.content = @"We had a party!";
    post3.timeStamp = [NSDate date];
    
    PostModel *post4 = [[PostModel alloc] init];
    post4.userName   = @"Christina";
    post4.title = @"Day 5";
    post4.content = @"It rained today.";
    post4.timeStamp = [NSDate date];
    
    PostModel *post5 = [[PostModel alloc] init];
    post5.userName   = @"Christina";
    post5.title = @"Day 6";
    post5.content = @"Best. Snacks. Ever.";
    post5.timeStamp = [NSDate date];
    
    PostModel *post6 = [[PostModel alloc] init];
    post6.userName   = @"Christina";
    post6.title = @"Day 7";
    post6.content = @"Code broke, then fixed. Phew.";
    post6.timeStamp = [NSDate date];
    
    PostModel *post7 = [[PostModel alloc] init];
    post7.userName   = @"Christina";
    post7.title = @"Day 8";
    post7.content = @"Home stretch!";
    post7.timeStamp = [NSDate date];
    
    PostModel *post8 = [[PostModel alloc] init];
    post8.userName   = @"Christina";
    post8.title = @"Day 9";
    post8.content = @"Wore my favorite scarf today.";
    post8.timeStamp = [NSDate date];
    
    PostModel *post9 = [[PostModel alloc] init];
    post9.userName   = @"Christina";
    post9.title = @"Day 10";
    post9.content = @"Final project - done!";
    post9.timeStamp = [NSDate date];
    
    _posts = [NSMutableArray arrayWithObjects: post, post1, post2, post3, post4, post5, post6, post7, post8, post9, nil];
    
    [self.tableView reloadData];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return _posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    
    static NSString *reuseIdentifier = @"Cell";
    PostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
   
    // could do instead
    // [cell setLabelValuesWithPost:_posts[indexPath.row]]; instead of next 8lines
    
 // check these lines
    NSDate *postDate = [_posts[indexPath.row] timeStamp];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateStyle:NSDateFormatterShortStyle];
    NSString *dateString = [dateFormat stringFromDate:postDate];
    
 
    
    cell.userName.text = [_posts[indexPath.row] userName];
    cell.title.text = [_posts[indexPath.row] title];
    cell.content.text = [_posts[indexPath.row] content];
    cell.timeStamp.text = dateString;
    
    
    
    return cell;
}

//class oct 28th

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if(segue.identifier isEqualToString:@"EditPostSegue")
    EditPostViewController *editVC = segue.destinationViewController;
   NSInteger selectedRow = [[self.tableView indexPathForSelectedRow] row];
    editVC.post = _posts[selectedRow];
}
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
