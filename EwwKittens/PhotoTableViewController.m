//
//  PhotoTableViewController.m
//  EwwKittens
//
//  Created by Marion Ano on 4/8/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "PhotoTableViewController.h"
#import "DetailViewController.h"

@interface PhotoTableViewController ()

@end

@implementation PhotoTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//}

//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (void)viewDidLoad
{
    //asking self to show all the "Kitten"
    self.parseClassName = @"Kitten";
    
    [super viewDidLoad];
}

-(PFTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    PFTableViewCell *cell = [super tableView: tableView cellForRowAtIndexPath:indexPath object:object];
    cell.imageView.file = [object objectForKey:@"image"];
    [cell.imageView loadInBackground];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [self performSegueWithIdentifier:@"displayDetailfromList" sender:cell];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(PFTableViewCell *)sender
{
    // Check that a new transition has been requested to the DetailViewController and prepares for it
    if ([segue.identifier isEqualToString:@"displayDetailfromList"]){
        
        // Capture the object (e.g. exam) the user has selected from the list
        //        NSIndexPath *indexPath = [self.myTableView indexPathForSelectedRow];
        //        PFObject *object = [self objectAtIndexPath:indexPath];
        
        // Set destination view controller to DetailViewController to avoid the NavigationViewController in the middle (if you have it embedded into a navigation controller, if not ignore that part)
        //UINavigationController *nav = [segue destinationViewController];
        DetailViewController *vc = segue.destinationViewController;
        vc.image = sender.imageView.image;
        //need to pass the image via segue
        //detailViewController.exam = object;
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
