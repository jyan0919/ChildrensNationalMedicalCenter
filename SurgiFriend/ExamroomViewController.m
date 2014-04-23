//
//  ExamroomViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/13/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "ExamroomViewController.h"
#import "NurseViewController.h"
#import "DoctorViewController.h"
#import "VisitViewController.h"

@interface ExamroomViewController ()

@end

@implementation ExamroomViewController
@synthesize bg, titleLabel, resultLabel, appliances, lastNameExamroom, firstNameExamroom, dobExamroom, addressExamroom, insuranceExamroom, guardianExamroom, diagnosisExamroom, backvisitbutton, backmeetnursebutton, meetyourdoctorbutton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //set background image
    UIImage *bgImage = [UIImage imageNamed:@"bg-tree.png"];
    [bg setImage:bgImage];
    
    //set image to visit button for normal state
    UIImage *btnImage0 = [UIImage imageNamed:@"bear-yourvisit.png"];
    [backvisitbutton setImage:btnImage0 forState:UIControlStateNormal];
    
    //set image to meetyournurse button for normal state
    UIImage *btnImage1 = [UIImage imageNamed:@"grass-meetnurse.png"];
    [backmeetnursebutton setImage:btnImage1 forState:UIControlStateNormal];
    
    //set image to meetdoctor button for normal state
    UIImage *btnImage2 = [UIImage imageNamed:@"grass-meetdoc.png"];
    [meetyourdoctorbutton setImage:btnImage2 forState:UIControlStateNormal];
    
    //set image to medical appliances
    UIImage *image = [UIImage imageNamed:@"appliances.png"];
    [appliances setImage:image];
    
    //set title label text
    titleLabel.text = @"What is that in the exam room?";
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    titleLabel.text = @"What is that in the exam room?";
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stehoscope:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat: @"Stethoscope: A medical instrument for listening to the action of someone's heart or breathing."];
    resultLabel.text = output;
    resultLabel.numberOfLines = 0;
}

- (IBAction)patient_monitor:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat: @"Patient Monitor: an electronic medical device that measures and displays a patient's vital signs."];
    resultLabel.text = output;
    resultLabel.numberOfLines = 0;
}

- (IBAction)medicine:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat: @"Medicine"];
    resultLabel.text = output;
    resultLabel.numberOfLines = 0;
}

- (IBAction)bandaid:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat: @"Bandaid"];
    resultLabel.text = output;
    resultLabel.numberOfLines = 0;
}

- (IBAction)thermometer:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat: @"Thermometer: an instrument for measuring and indicating temperature."];
    resultLabel.text = output;
    resultLabel.numberOfLines = 0;
}

- (IBAction)drops:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat: @"Drops..."];
    resultLabel.text = output;
    resultLabel.numberOfLines = 0;
}

- (IBAction)syringe:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat: @"Syringe: a tube with a nozzle and piston or bulb for sucking in and ejecting liquid in a thin stream."];
    resultLabel.text = output;
    resultLabel.numberOfLines = 0;
}

- (IBAction)backVisit:(id)sender {
}

- (IBAction)backMeetYourNurse:(id)sender {
}

- (IBAction)toMeetYourDoctor:(id)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"examroomToNurse"]) {
        NurseViewController *vc = [segue destinationViewController];
        vc.lastNameNurse = lastNameExamroom;
        vc.firstNameNurse = firstNameExamroom;
        vc.dobNurse = dobExamroom;
        vc.addressNurse = addressExamroom;
        vc.insuranceNurse = insuranceExamroom;
        vc.guardianNurse = guardianExamroom;
        vc.diagnosisNurse = diagnosisExamroom;
    } else if ([segue.identifier isEqualToString:@"examroomToDoctor"]) {
        DoctorViewController *vc = [segue destinationViewController];
        vc.lastNameDoctor = lastNameExamroom;
        vc.firstNameDoctor = firstNameExamroom;
        vc.dobDoctor = dobExamroom;
        vc.addressDoctor = addressExamroom;
        vc.insuranceDoctor = insuranceExamroom;
        vc.guardianDoctor = guardianExamroom;
        vc.diagnosisDoctor = diagnosisExamroom;
    } else if ([segue.identifier isEqualToString:@"examroomToVisit"]) {
        VisitViewController *vc = [segue destinationViewController];
        vc.lastNameVisit = lastNameExamroom;
        vc.firstNameVisit = firstNameExamroom;
        vc.dobVisit = dobExamroom;
        vc.addressVisit = addressExamroom;
        vc.insuranceVisit = insuranceExamroom;
        vc.guardianVisit = guardianExamroom;
        vc.diagnosisVisit = diagnosisExamroom;
    }
}
@end
