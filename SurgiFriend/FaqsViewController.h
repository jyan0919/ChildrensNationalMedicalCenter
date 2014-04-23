//
//  FaqsViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/13/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaqsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *bg;

@property (retain, nonatomic) NSString *lastNameFaqs;
@property (retain, nonatomic) NSString *firstNameFaqs;
@property (retain, nonatomic) NSString *dobFaqs;
@property (retain, nonatomic) NSString *addressFaqs;
@property (retain, nonatomic) NSString *insuranceFaqs;
@property (retain, nonatomic) NSString *guardianFaqs;
@property (retain, nonatomic) NSString *diagnosisFaqs;

@property (weak, nonatomic) IBOutlet UIButton *backvisit;
@property (weak, nonatomic) IBOutlet UIButton *backmeetdoc;
@property (weak, nonatomic) IBOutlet UIButton *toemail;

@property (strong, nonatomic) IBOutlet UITextView *question1;
@property (strong, nonatomic) IBOutlet UITextView *question2;
@property (strong, nonatomic) IBOutlet UITextView *question3;


- (IBAction)check1:(id)sender;
- (IBAction)check2:(id)sender;
- (IBAction)check3:(id)sender;

@property (nonatomic) BOOL is1checked;
@property (nonatomic) BOOL is2checked;
@property (nonatomic) BOOL is3checked;

@property (strong, nonatomic) IBOutlet UILabel *hintLabel;



@end
