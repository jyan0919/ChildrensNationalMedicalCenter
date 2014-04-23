//
//  NurseViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/13/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "NurseViewController.h"
#import "ExamroomViewController.h"
#import "VisitViewController.h"

@interface NurseViewController ()

@end

@implementation NurseViewController
@synthesize bg, titleLabel, resultLabel, lastNameNurse, firstNameNurse, dobNurse, insuranceNurse, guardianNurse, addressNurse, diagnosisNurse, backvisitbutton, toexamroombutton, nurseabutton, nursebbutton, nursecbutton;

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
    [toexamroombutton setImage:btnImage1 forState:UIControlStateNormal];
    
    //set image to nurseA button for normal state
    UIImage *btnImage2 = [UIImage imageNamed:@"nurse-s.png"];
    [nurseabutton setImage:btnImage2 forState:UIControlStateNormal];
    //set image to nurseA button for pressed state
    UIImage *btnImage3 = [UIImage imageNamed:@"nurse-a.png"];
    [nurseabutton setImage:btnImage3 forState:UIControlStateHighlighted];
    
    //set image to nurseB button for normal state
    [nursebbutton setImage:btnImage2 forState:UIControlStateNormal];
    //set image to nurseB button for pressed state
    UIImage *btnImage4 = [UIImage imageNamed:@"nurse-b.png"];
    [nursebbutton setImage:btnImage4 forState:UIControlStateHighlighted];
    
    //set image to nurseC button for normal state
    [nursecbutton setImage:btnImage2 forState:UIControlStateNormal];
    //set image to nurseC button for pressed state
    UIImage *btnImage5 = [UIImage imageNamed:@"nurse-c.png"];
    [nursecbutton setImage:btnImage5 forState:UIControlStateHighlighted];
    
    //set title label text
    titleLabel.text = @"Who is Nurse B?";
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nurseA:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat:@"Nope!"];
    resultLabel.text = output;
}

- (IBAction)nurseB:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat:@"Correct!"];
    resultLabel.text = output;
}

- (IBAction)nurseC:(id)sender {
    NSString *output = [[NSString alloc] initWithFormat:@"Nope!"];
    resultLabel.text = output;
}

- (IBAction)backVisit:(id)sender {
}

- (IBAction)toExamRoom:(id)sender {
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"nurseToExamroom"]) {
        ExamroomViewController *vc = [segue destinationViewController];
        vc.lastNameExamroom = lastNameNurse;
        vc.firstNameExamroom = firstNameNurse;
        vc.dobExamroom = dobNurse;
        vc.addressExamroom = addressNurse;
        vc.guardianExamroom = guardianNurse;
        vc.insuranceExamroom = insuranceNurse;
        vc.diagnosisExamroom = diagnosisNurse;
    } else if ([segue.identifier isEqualToString:@"nurseToVisit"]) {
        VisitViewController *vc = [segue destinationViewController];
        vc.lastNameVisit = lastNameNurse;
        vc.firstNameVisit = firstNameNurse;
        vc.dobVisit = dobNurse;
        vc.addressVisit= addressNurse;
        vc.guardianVisit = guardianNurse;
        vc.insuranceVisit = insuranceNurse;
        vc.diagnosisVisit = diagnosisNurse;
    }
}
@end
