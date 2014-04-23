//
//  DoctorViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/13/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoctorViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *bg;

@property (retain, nonatomic) NSString *lastNameDoctor;
@property (retain, nonatomic) NSString *firstNameDoctor;
@property (retain, nonatomic) NSString *dobDoctor;
@property (retain, nonatomic) NSString *addressDoctor;
@property (retain, nonatomic) NSString *insuranceDoctor;
@property (retain, nonatomic) NSString *guardianDoctor;
@property (retain, nonatomic) NSString *diagnosisDoctor;

@property (weak, nonatomic) IBOutlet UIImageView *docPic;
@property (weak, nonatomic) IBOutlet UILabel *docName;
@property (weak, nonatomic) IBOutlet UILabel *docEdu;
@property (weak, nonatomic) IBOutlet UILabel *docSpe;
@property (weak, nonatomic) IBOutlet UILabel *docFood;
@property (weak, nonatomic) IBOutlet UILabel *docSubject;
@property (weak, nonatomic) IBOutlet UILabel *docCartoon;


@property (weak, nonatomic) IBOutlet UIButton *backvisitbutton;
@property (weak, nonatomic) IBOutlet UIButton *backexamroombutton;
@property (weak, nonatomic) IBOutlet UIButton *tofaqsbutton;

@end
