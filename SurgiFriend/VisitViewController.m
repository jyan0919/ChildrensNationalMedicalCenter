//
//  VisitViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/12/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "VisitViewController.h"
#import "NurseViewController.h"
#import "ExamroomViewController.h"
#import "DoctorViewController.h"
#import "FaqsViewController.h"
#import "EmailViewController.h"

@interface VisitViewController ()

@end

@implementation VisitViewController
@synthesize bg, lastNameVisit, firstNameVisit, dobVisit, addressVisit, insuranceVisit, guardianVisit, diagnosisVisit, homebutton, meetyournursebutton, examroombutton, meetyourdoctorbutton, faqsbutton, emailmyselfbutton;

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
    
    //set image to home button for normal state
    UIImage * btnImage = [UIImage imageNamed:@"bear-home.png"];
    [homebutton setImage:btnImage forState:UIControlStateNormal];
    
    //set image to meetyournurse button for normal state
    UIImage * btnImage1 = [UIImage imageNamed:@"grass-meetnurse.png"];
    [meetyournursebutton setImage:btnImage1 forState:UIControlStateNormal];
    
    //set image to examroom button for normal state
    UIImage * btnImage2 = [UIImage imageNamed:@"grass-examroom.png"];
    [examroombutton setImage:btnImage2 forState:UIControlStateNormal];
    
    //set image to meetyourdoctor button for normal state
    UIImage * btnImage3 = [UIImage imageNamed:@"grass-meetdoc.png"];
    [meetyourdoctorbutton setImage:btnImage3 forState:UIControlStateNormal];
    
    //set image to faqs button for normal state
    UIImage * btnImage4 = [UIImage imageNamed:@"grass-faqs.png"];
    [faqsbutton setImage:btnImage4 forState:UIControlStateNormal];
    
    //set image to emailmyself button for normal state
    UIImage * btnImage5 = [UIImage imageNamed:@"grass-emailmyself.png"];
    [emailmyselfbutton setImage:btnImage5 forState:UIControlStateNormal];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"visitToNurse"]) {
        NurseViewController *vc = [segue destinationViewController];
        vc.lastNameNurse = lastNameVisit;
        vc.firstNameNurse = firstNameVisit;
        vc.addressNurse = addressVisit;
        vc.dobNurse = dobVisit;
        vc.guardianNurse = guardianVisit;
        vc.insuranceNurse = insuranceVisit;
        vc.diagnosisNurse = diagnosisVisit;
    } else if ([segue.identifier isEqualToString:@"visitToExamroom"]) {
        ExamroomViewController *vc = [segue destinationViewController];
        vc.lastNameExamroom = lastNameVisit;
        vc.firstNameExamroom = firstNameVisit;
        vc.addressExamroom = addressVisit;
        vc.dobExamroom = dobVisit;
        vc.guardianExamroom = guardianVisit;
        vc.insuranceExamroom = insuranceVisit;
        vc.diagnosisExamroom = diagnosisVisit;
    } else if ([segue.identifier isEqualToString:@"visitToDoctor"]) {
        DoctorViewController *vc = [segue destinationViewController];
        vc.lastNameDoctor = lastNameVisit;
        vc.firstNameDoctor = firstNameVisit;
        vc.addressDoctor = addressVisit;
        vc.dobDoctor = dobVisit;
        vc.guardianDoctor = guardianVisit;
        vc.insuranceDoctor = insuranceVisit;
        vc.diagnosisDoctor = diagnosisVisit;
    } else if ([segue.identifier isEqualToString:@"visitToFaqs"]) {
        FaqsViewController *vc = [segue destinationViewController];
        vc.lastNameFaqs = lastNameVisit;
        vc.firstNameFaqs = firstNameVisit;
        vc.addressFaqs = addressVisit;
        vc.dobFaqs = dobVisit;
        vc.guardianFaqs = guardianVisit;
        vc.insuranceFaqs = insuranceVisit;
        vc.diagnosisFaqs = diagnosisVisit;
    } else if ([segue.identifier isEqualToString:@"visitToEmail"]) {
        EmailViewController *vc = [segue destinationViewController];
        vc.lastNameEmail = lastNameVisit;
        vc.firstNameEmail = firstNameVisit;
        vc.addressEmail = addressVisit;
        vc.dobEmail = dobVisit;
        vc.guardianEmail = guardianVisit;
        vc.insuranceEmail = insuranceVisit;
        vc.diagnosisEmail = diagnosisVisit;
    }
}

- (IBAction)backHome:(id)sender {
}

- (IBAction)meetYourNurse:(id)sender {
}

- (IBAction)examRoom:(id)sender {
}

- (IBAction)meetYourDoctor:(id)sender {
}

- (IBAction)faqs:(id)sender {
}

- (IBAction)emailMyself:(id)sender {
}
@end
