//
//  ForshowViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/22/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForshowViewController : UIViewController


@property (retain, nonatomic) NSString *lastName;
@property (retain, nonatomic) NSString *firstName;
@property (retain, nonatomic) NSString *dob;
@property (retain, nonatomic) NSString *address;
@property (retain, nonatomic) NSString *insurance;
@property (retain, nonatomic) NSString *guardian;
@property (retain, nonatomic) NSString *diagnosis;

@property (strong, nonatomic) IBOutlet UIImageView *bg;
@property (strong, nonatomic) IBOutlet UIButton *signinButton;

@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;


@end
