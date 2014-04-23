//
//  VisitViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/12/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VisitViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UIImageView *bg;

@property (retain, nonatomic) NSString *lastNameVisit;
@property (retain, nonatomic) NSString *firstNameVisit;
@property (retain, nonatomic) NSString *dobVisit;
@property (retain, nonatomic) NSString *addressVisit;
@property (retain, nonatomic) NSString *insuranceVisit;
@property (retain, nonatomic) NSString *guardianVisit;
@property (retain, nonatomic) NSString *diagnosisVisit;

- (IBAction)backHome:(id)sender;
- (IBAction)meetYourNurse:(id)sender;
- (IBAction)examRoom:(id)sender;
- (IBAction)meetYourDoctor:(id)sender;
- (IBAction)faqs:(id)sender;
- (IBAction)emailMyself:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *homebutton;
@property (weak, nonatomic) IBOutlet UIButton *meetyournursebutton;
@property (weak, nonatomic) IBOutlet UIButton *examroombutton;
@property (weak, nonatomic) IBOutlet UIButton *meetyourdoctorbutton;
@property (weak, nonatomic) IBOutlet UIButton *faqsbutton;
@property (weak, nonatomic) IBOutlet UIButton *emailmyselfbutton;


@end
