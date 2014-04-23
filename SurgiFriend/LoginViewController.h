//
//  LoginViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/15/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (retain, nonatomic) NSString *lastName;
@property (retain, nonatomic) NSString *firstName;
@property (retain, nonatomic) NSString *dob;
@property (retain, nonatomic) NSString *address;
@property (retain, nonatomic) NSString *insurance;
@property (retain, nonatomic) NSString *guardian;
@property (retain, nonatomic) NSString *diagnosis;

@property (weak, nonatomic) IBOutlet UIImageView *bg;
@property (strong, nonatomic) IBOutlet UITextField *insuranceTextfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextfield;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIButton *backhomeButton;

- (IBAction)login:(id)sender;


@end
