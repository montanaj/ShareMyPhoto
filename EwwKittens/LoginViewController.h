//
//  LoginViewController.h
//  EwwKittens
//
//  Created by Marion Ano on 4/8/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface LoginViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *userNameField;

@property (strong, nonatomic) IBOutlet UITextField *emailAddressField;

@property (strong, nonatomic) IBOutlet UITextField *emailPasswordField;

@property (strong, nonatomic) IBOutlet UITextField *reEnterPasswordField;


@end
