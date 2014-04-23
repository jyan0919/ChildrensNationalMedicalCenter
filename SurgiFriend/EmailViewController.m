//
//  EmailViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/12/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "EmailViewController.h"
#import "VisitViewController.h"

@interface EmailViewController ()

@end

@implementation EmailViewController
@synthesize bg, firstNameEmail, lastNameEmail, dobEmail, addressEmail, insuranceEmail, guardianEmail, diagnosisEmail, backvisit, patientbutton, faqsbutton, docbutton, allbutton, emailbutton, textView, backfaqsbutton;

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
    [backvisit setImage:btnImage0 forState:UIControlStateNormal];
    
    //set image to faqs button for normal state
    UIImage *btnImage1 = [UIImage imageNamed:@"grass-faqs.png"];
    [backfaqsbutton setImage:btnImage1 forState:UIControlStateNormal];
    
    //set image to home button
    [self.backHomebutton setImage:[UIImage imageNamed:@"bear-home.png"] forState:UIControlStateNormal];
    
    //set text to display patient's info button
    [patientbutton setTitle:@"Display Patient's Info" forState:UIControlStateNormal];
    
    //set text to display doctor's info button
    [docbutton setTitle:@"Display Doctor's Info" forState:UIControlStateNormal];
    
    //set text to display faqs button
    [faqsbutton setTitle:@"Display Selected FAQs" forState:UIControlStateNormal];
    
    //set text to display all info button
    [allbutton setTitle:@"Display All" forState:UIControlStateNormal];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//displays patient's info
- (IBAction)patient:(id)sender {
    textView.text = [NSString stringWithFormat:@"%@ %@\r%@\r%@\r%@\r%@\r%@", firstNameEmail, lastNameEmail, dobEmail, addressEmail, insuranceEmail, guardianEmail, diagnosisEmail];
}

//displays patient's doctor's info
- (IBAction)doctor:(id)sender {
    if ([diagnosisEmail isEqualToString:@"CIRCUMCISION"]) {
        textView.text = @"Dr. Name: Doctor Pig\rEducation: Medical School\rSpecializes: Circumcision\rFavorite food: Sushi\rFavorite subject in school: Math\rFavorite cartoon character: Snoopy";
    } else if ([diagnosisEmail isEqualToString:@"HYPOSPADIAS"]) {
        textView.text = @"Dr. Name: Doctor Elephant\rEducation: Medical School\rSpecializes: Hypospadias\rFavorite food: Banana\rFavorite subject in school: English\rFavorite cartoon character: Popeye";
    } else if ([diagnosisEmail isEqualToString:@"UNDESCENDED TESTICLE"]){
        textView.text = @"Dr. Name: Doctor Tiger\rEducation: Medical School\rSpecializes: Undecended testicles\rFavorite food: Meat\rFavorite subject in school: P.E\rFavorite cartoon character: Mickey Mouse";
    } else {
        textView.text = @"You need to enter your diagnosis.";
    }
}

//displays faqs
- (IBAction)faqs:(id)sender {
    NSString *info = [NSString stringWithFormat:@"%@\r%@\r%@", self.question1, self.question2, self.question3];
    textView.text = info;
}

//displays all info
- (IBAction)all:(id)sender {
    NSString *info = [NSString stringWithFormat:@"---------Patient's Info---------\r%@ %@\r%@\r%@\r%@\r%@\r%@\r\r", firstNameEmail, lastNameEmail, dobEmail, addressEmail, insuranceEmail, guardianEmail, diagnosisEmail];
    if ([diagnosisEmail isEqualToString:@"CIRCUMCISION"]) {
        info = [info stringByAppendingString:@"---------Doctor's Info---------\r"];
        info = [info stringByAppendingString:@"Dr. Name: Doctor Pig\rEducation: Medical School\rSpecializes: Circumcision\rFavorite food: Sushi\rFavorite subject in school: Math\rFavorite cartoon character: Snoopy\r\r"];
        info = [info stringByAppendingString:@"---------Selected FAQs--------\r"];
        info = [info stringByAppendingFormat:@"%@\r%@\r%@", self.question1, self.question2, self.question3  ];
    } else if ([diagnosisEmail isEqualToString:@"HYPOSPADIAS"]) {
        info = [info stringByAppendingString:@"---------Doctor's Info---------\r"];
        info = [info stringByAppendingString:@"Dr. Name: Doctor Elephant\rEducation: Medical School\rSpecializes: Hypospadias\rFavorite food: Banana\rFavorite subject in school: English\rFavorite cartoon character: Popeye\r\r"];
        info = [info stringByAppendingString:@"---------Selected FAQs--------\r"];
        info = [info stringByAppendingFormat:@"%@\r%@\r%@", self.question1, self.question2, self.question3  ];
    } else if ([diagnosisEmail isEqualToString:@"UNDESCENDED TESTICLE"]){
        info = [info stringByAppendingString:@"---------Doctor's Info--------\r"];
        info = [info stringByAppendingString:@"Dr. Name: Doctor Tiger\rEducation: Medical School\rSpecializes: Undecended testicles\rFavorite food: Meat\rFavorite subject in school: P.E\rFavorite cartoon character: Mickey Mouse\r\r"];
        info = [info stringByAppendingString:@"---------Selected FAQs--------\r"];
        info = [info stringByAppendingFormat:@"%@\r%@\r%@", self.question1, self.question2, self.question3  ];
    } else {
        info = [info stringByAppendingString:@"\rYou need to enter your diagnosis."];
    }
    textView.text = info;
}

//emails to patient himself
- (IBAction)email:(id)sender {
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    [mailComposer setMailComposeDelegate:self];
    
    //set email addresses as array and give an example address
    NSArray *emailAddresses = [[NSArray alloc] initWithObjects:@"example@example.com", nil];
    [mailComposer setToRecipients:emailAddresses];
    [mailComposer setSubject:@"Info from Children's National Medical Center - Urology Clinic"];
    [mailComposer setMessageBody:textView.text isHTML:NO];
    
    // Present mail view controller on screen
    [self presentViewController:mailComposer animated:YES completion:nil];
}

//finishes sending email
- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:nil];
}

//passes patient's data back to visit and faqs views
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"emailToVisit"]) {
        VisitViewController *vc = [segue destinationViewController];
        vc.lastNameVisit = lastNameEmail;
        vc.firstNameVisit = firstNameEmail;
        vc.dobVisit = dobEmail;
        vc.addressVisit = addressEmail;
        vc.insuranceVisit = insuranceEmail;
        vc.guardianVisit = guardianEmail;
        vc.diagnosisVisit = diagnosisEmail;
    }
}

@end
