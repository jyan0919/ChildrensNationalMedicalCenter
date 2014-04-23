//
//  DoctorViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/13/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "DoctorViewController.h"
#import "ExamroomViewController.h"
#import "FaqsViewController.h"
#import "VisitViewController.h"

@interface DoctorViewController ()

@end

@implementation DoctorViewController
@synthesize bg, lastNameDoctor, firstNameDoctor, dobDoctor, addressDoctor, insuranceDoctor, guardianDoctor, diagnosisDoctor, docPic, docName, docEdu, docSpe, docFood, docSubject, docCartoon, backvisitbutton, backexamroombutton, tofaqsbutton;

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
    
    //set image to examroom button for normal state
    UIImage *btnImage1 = [UIImage imageNamed:@"grass-examroom.png"];
    [backexamroombutton setImage:btnImage1 forState:UIControlStateNormal];
    
    //set image to faqs button for normal state
    UIImage *btnImage2 = [UIImage imageNamed:@"grass-faqs.png"];
    [tofaqsbutton setImage:btnImage2 forState:UIControlStateNormal];
    
    //decides which doc's info to show; depends on user's diagnosis
    if ([diagnosisDoctor isEqualToString:@"CIRCUMCISION"]) {
        UIImage *image = [UIImage imageNamed:@"doc-pig.png"];
        [docPic setImage:image];
        docName.text = @"Dr. Name: Doctor Pig";
        docEdu.text = @"Education: Medical School";
        docSpe.text = @"Specializes: Circumcision";
        docFood.text = @"Favorite food: Sushi";
        docSubject.text = @"Favorite subject in school: Math";
        docCartoon.text = @"Favorite cartoon character: Snoopy";
    } else if ([diagnosisDoctor isEqualToString:@"HYPOSPADIAS"]) {
        UIImage *image = [UIImage imageNamed:@"doctor-elephant.png"];
        [docPic setImage:image];
        docName.text = @"Dr. Name: Doctor Elephant";
        docEdu.text = @"Education: Medical School";
        docSpe.text = @"Specializes: Hypospadias";
        docFood.text = @"Favorite food: Banana";
        docSubject.text = @"Favorite subject in school: English";
        docCartoon.text = @"Favorite cartoon character: Popeye";
    } else if ([diagnosisDoctor isEqualToString:@"UNDESCENDED TESTICLE"]){
        UIImage *image = [UIImage imageNamed:@"doctor-tiger.png"];
        [docPic setImage:image];
        docName.text = @"Dr. Name: Doctor Tiger";
        docEdu.text = @"Education: Medical School";
        docSpe.text = @"Specializes: Undecended testicles";
        docFood.text = @"Favorite food: Meat";
        docSubject.text = @"Favorite subject in school: P.E.";
        docCartoon.text = @"Favorite cartoon character: Mickey Mouse";
    } else {
        docName.text = @"You need to enter your diagnosis.";
        docEdu.text = @"";
        docSpe.text = @"";
        docFood.text = @"";
        docSubject.text = @"";
        docCartoon.text = @"";
    }
        
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//pass patient's info back to visit view, examroom view, or to the next FAQs view
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"doctorToExamroom"]) {
        ExamroomViewController *vc = [segue destinationViewController];
        vc.firstNameExamroom = firstNameDoctor;
        vc.lastNameExamroom = lastNameDoctor;
        vc.addressExamroom = addressDoctor;
        vc.dobExamroom = dobDoctor;
        vc.guardianExamroom = guardianDoctor;
        vc.insuranceExamroom = insuranceDoctor;
        vc.diagnosisExamroom = diagnosisDoctor;
    } else if ([segue.identifier isEqualToString:@"doctorToFaqs"]) {
        FaqsViewController *vc = [segue destinationViewController];
        vc.firstNameFaqs = firstNameDoctor;
        vc.lastNameFaqs = lastNameDoctor;
        vc.addressFaqs = addressDoctor;
        vc.dobFaqs = dobDoctor;
        vc.guardianFaqs = guardianDoctor;
        vc.insuranceFaqs = insuranceDoctor;
        vc.diagnosisFaqs = diagnosisDoctor;
    } else if ([segue.identifier isEqualToString:@"doctorToVisit"]) {
        VisitViewController *vc = [segue destinationViewController];
        vc.firstNameVisit = firstNameDoctor;
        vc.lastNameVisit = lastNameDoctor;
        vc.addressVisit = addressDoctor;
        vc.dobVisit = dobDoctor;
        vc.guardianVisit = guardianDoctor;
        vc.insuranceVisit = insuranceDoctor;
        vc.diagnosisVisit = diagnosisDoctor;
    }
}
@end
