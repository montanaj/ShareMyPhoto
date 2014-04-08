//
//  CMJCameraViewController.h
//  EwwKittens
//
//  Created by Jaime Hernandez on 4/8/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMJCameraViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:(id)sender;
- (IBAction)selectPhoto:(id)sender;


@end
