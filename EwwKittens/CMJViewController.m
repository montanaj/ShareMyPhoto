//
//  CMJViewController.m
//  EwwKittens
//
//  Created by Claire Jencks on 4/8/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "CMJViewController.h"
#import <Parse/Parse.h>
@interface CMJViewController ()

@end

@implementation CMJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [PFUser enableAutomaticUser];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onAddButtonPressed:(id)sender
{
    
    
    int width = 270 + arc4random()%100;
    int height = 270 + arc4random()%100;
    NSString *urlString = [NSString stringWithFormat:@"http://placekitten.com/%d/%d", width, height];
    NSURL *url = [NSURL URLWithString:urlString];
    //NSURL *url = [NSURL URLWithString:@"http://placekitten.com/320/320"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    PFObject *object = [PFObject objectWithClassName:@"Kitten"];
    PFFile *file = [PFFile fileWithData:data];
    [object setObject:file forKey:@"image"];
    
    [object setObject:[PFUser currentUser] forKey:@"user"];
    
    [object saveInBackground];
}

@end
