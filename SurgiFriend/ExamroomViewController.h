//
//  ExamroomViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/13/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExamroomViewController : UIViewController {
    
    IBOutlet UILabel *resultLabel;
}

@property (weak, nonatomic) IBOutlet UIImageView *bg;

@property (retain, nonatomic) NSString *lastNameExamroom;
@property (retain, nonatomic) NSString *firstNameExamroom;
@property (retain, nonatomic) NSString *dobExamroom;
@property (retain, nonatomic) NSString *addressExamroom;
@property (retain, nonatomic) NSString *insuranceExamroom;
@property (retain, nonatomic) NSString *guardianExamroom;
@property (retain, nonatomic) NSString *diagnosisExamroom;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (retain, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIImageView *appliances;

- (IBAction)stehoscope:(id)sender;
- (IBAction)patient_monitor:(id)sender;
- (IBAction)medicine:(id)sender;
- (IBAction)bandaid:(id)sender;
- (IBAction)thermometer:(id)sender;
- (IBAction)drops:(id)sender;
- (IBAction)syringe:(id)sender;

- (IBAction)backVisit:(id)sender;
- (IBAction)backMeetYourNurse:(id)sender;
- (IBAction)toMeetYourDoctor:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *backvisitbutton;
@property (weak, nonatomic) IBOutlet UIButton *meetyourdoctorbutton;
@property (weak, nonatomic) IBOutlet UIButton *backmeetnursebutton;


@end
