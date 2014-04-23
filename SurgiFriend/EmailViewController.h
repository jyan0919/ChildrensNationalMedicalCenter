//
//  EmailViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/12/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface EmailViewController : UIViewController <MFMailComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *bg;

@property (retain, nonatomic) NSString *lastNameEmail;
@property (retain, nonatomic) NSString *firstNameEmail;
@property (retain, nonatomic) NSString *dobEmail;
@property (retain, nonatomic) NSString *addressEmail;
@property (retain, nonatomic) NSString *insuranceEmail;
@property (retain, nonatomic) NSString *guardianEmail;
@property (retain, nonatomic) NSString *diagnosisEmail;
@property (retain, nonatomic) NSString *question1;
@property (retain, nonatomic) NSString *question2;
@property (retain, nonatomic) NSString *question3;

- (IBAction)patient:(id)sender;
- (IBAction)doctor:(id)sender;
- (IBAction)faqs:(id)sender;
- (IBAction)all:(id)sender;
- (IBAction)email:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *backvisit;
@property (weak, nonatomic) IBOutlet UIButton *patientbutton;
@property (weak, nonatomic) IBOutlet UIButton *docbutton;
@property (weak, nonatomic) IBOutlet UIButton *faqsbutton;
@property (weak, nonatomic) IBOutlet UIButton *allbutton;
@property (weak, nonatomic) IBOutlet UIButton *emailbutton;
@property (weak, nonatomic) IBOutlet UIButton *backfaqsbutton;
@property (strong, nonatomic) IBOutlet UIButton *backHomebutton;

@property (strong, nonatomic) IBOutlet UITextView *textView;

@end
