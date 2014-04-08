
//
//  CatsOnParadeViewController.m
//  EwwKittens
//
//  Created by Claire Jencks on 4/8/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "AllProfilesViewController.h"

@interface AllProfilesViewController ()

@end

@implementation AllProfilesViewController


- (void)viewDidLoad
{
    //tells pfquerytable viewcontroller to show all objects in Kitten class
    self.parseClassName = @"Kitten";
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (PFTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    PFTableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath object:object];
    cell.imageView.file = [object objectForKey:@"image"];
    [cell.imageView loadInBackground];
    return cell;
}


@end
