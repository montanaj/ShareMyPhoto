//
//  PhotoTableViewController.h
//  EwwKittens
//
//  Created by Marion Ano on 4/8/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import <Parse/Parse.h>

@interface PhotoTableViewController : PFQueryTableViewController
@property (strong, nonatomic) IBOutlet UITableView *photoTableView;

@end
