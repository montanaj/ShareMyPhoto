//
//  DetailViewController.m
//  EwwKittens
//
//  Created by Marion Ano on 4/8/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "DetailViewController.h"
#import "PhotoTableViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *detailImageView;

@end

@implementation DetailViewController

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
    self.detailImageView.image = self.image;

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
