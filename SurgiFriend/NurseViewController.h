//
//  NurseViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/13/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NurseViewController : UIViewController {
    IBOutlet UILabel *resultLabel;
}

@property (weak, nonatomic) IBOutlet UIImageView *bg;

@property (retain, nonatomic) NSString *lastNameNurse;
@property (retain, nonatomic) NSString *firstNameNurse;
@property (retain, nonatomic) NSString *dobNurse;
@property (retain, nonatomic) NSString *addressNurse;
@property (retain, nonatomic) NSString *insuranceNurse;
@property (retain, nonatomic) NSString *guardianNurse;
@property (retain, nonatomic) NSString *diagnosisNurse;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (retain, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)nurseA:(id)sender;
- (IBAction)nurseB:(id)sender;
- (IBAction)nurseC:(id)sender;
- (IBAction)backVisit:(id)sender;
- (IBAction)toExamRoom:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *nurseabutton;
@property (weak, nonatomic) IBOutlet UIButton *nursebbutton;
@property (weak, nonatomic) IBOutlet UIButton *nursecbutton;
@property (weak, nonatomic) IBOutlet UIButton *backvisitbutton;
@property (weak, nonatomic) IBOutlet UIButton *toexamroombutton;


@end
