//
//  FaqsViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/13/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "FaqsViewController.h"
#import "DoctorViewController.h"
#import "VisitViewController.h"
#import "EmailViewController.h"

@interface FaqsViewController ()

@end

@implementation FaqsViewController
@synthesize bg, lastNameFaqs, firstNameFaqs, dobFaqs, addressFaqs, insuranceFaqs, guardianFaqs, diagnosisFaqs, backmeetdoc, backvisit, toemail;

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
    
    //set image to meetdoc button for normal state
    UIImage *btnImage1 = [UIImage imageNamed:@"grass-meetdoc.png"];
    [backmeetdoc setImage:btnImage1 forState:UIControlStateNormal];
    
    //set image to emailmyself button for normal state
    UIImage *btnImage2 = [UIImage imageNamed:@"grass-emailmyself.png"];
    [toemail setImage:btnImage2 forState:UIControlStateNormal];
    
    //set questions and answers
    if ([diagnosisFaqs isEqualToString:@"CIRCUMCISION"]) {
        self.question1.text = @"Q1: What is circumcision?\rA1: Circumcision is a surgical procedure to remove the skin covering the end of the penis, called the foreskin. In many cultures, circumcision is a religious rite or a ceremonial tradition. It's most common in Jewish and Islamic faiths.\rComments: ";
        
        self.question2.text = @"Q2: How old should my child be for circumcision?\rA2:  Circumcision can be done at any age. However, the safest time to do it is right after your baby is born, when he is about 2 days old. Because the process is painful, we use a cream to numb the area and perform the surgery while your baby is still awake.\rIf the baby is older, we recommend that he be given some sort of anesthesia so there is less risk of injury to the penis. As babies get older, they become more aware of their sexual organs, so there is more psychological impact associated with the surgery and some kids tend to perceive it as some sort of punishment.\rComments: ";
        
        self.question3.text = @"Q3: What are the potential benefits of circumcision?\rA3: near-elimination of the lifetime risk of penile cancer; nearly 100 times reduction in the risk of urinary tract infections (UTI) during infancy; reduced incidence of balanitis and phimosis, both conditions affecting the foreskin of the penis; most researchers generally accept that circumcised men are less likely to acquire and transmit HIV and some sexually transmitted diseases.\rComments: ";
        
    } else if ([diagnosisFaqs isEqualToString:@"HYPOSPADIAS"]) {
        self.question1.text = @"Q1: How will I know if my baby has hypospadias?\rA1: While it’s possible for physicians to detect signs of severe hypospadias on a fetal ultrasound, the vast majority of children are diagnosed at birth.\rComments: ";
        
        self.question2.text = @"Q2: Is hypospadias painful?\rA2:  This condition won’t cause your son physical pain or block his urination (though if it goes untreated it can make it difficult for him to direct his urine spray).\rComments: ";
        
        self.question3.text = @"Q3: Do all boys with hypospadias need surgery?\rA3: If your son has a very mild case, he may not require surgery because his condition will not have a large impact on his life. However, sometimes parents of boys born with minor abnormalities still opt for surgery for cosmetic reasons.\rComments: ";

    } else if ([diagnosisFaqs isEqualToString:@"UNDESCENDED TESTICLE"]){
        self.question1.text = @"Q1: What is an undescended, or a undescended, testicle?\rA1: During normal fetal development, a boy's testicles form in his abdomen alongside the kidneys. By the time the baby’s born, his testicles have moved down into his scrotum. If one or both don’t “drop,” he has a condition called undescended testicles. \rComments: ";
        
        self.question2.text = @"Q2: Is surgery always required to treat undescended testicles?\rA2:  Some undescended testicles will eventually move into their proper position without any sort of treatment within the first three to four months of a baby’s life; those that do not will need to be moved surgically.\rComments: ";
        
        self.question3.text = @"Q3: What are the problems associated with a undescended testicle?\rA3: Undescended testicles can increase the risk of infertility. Normally, when the testicles are in the scrotum, they’re about 3 to 5 degrees cooler than they would be if they remained inside the body's abdominal cavity. The warmer temperatures inside the body may impair the development of the testicles and may affect the production of healthy sperm.\rBoys born with undescended testicles are also slightly more prone to testicular cancer, even after corrective surgery. The advantage of surgery, however, is that it moves the testis into a place that allows for routine self-examination, which could lead to early detection of any abnormalities later in life. \rComments: ";

    } else {
        self.question1.text = @"You need to enter your diagnosis.";
    }
    
    //set bool variables
    self.is1checked = NO;
    self.is2checked = NO;
    self.is3checked = NO;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)check1:(id)sender {
    [sender setSelected:YES];
    if (self.is1checked == NO) {
        self.is1checked = YES;
        [sender setTitle:@"CHECKED" forState:UIControlStateSelected];
    } else {
        self.is1checked = NO;
        [sender setTitle:@"UNCHECKED" forState:UIControlStateSelected];
    }
}

- (IBAction)check2:(id)sender {
    [sender setSelected:YES];
    if (self.is2checked == NO) {
        self.is2checked = YES;
        [sender setTitle:@"CHECKED" forState:UIControlStateSelected];
    } else {
        self.is2checked = NO;
        [sender setTitle:@"UNCHECKED" forState:UIControlStateSelected];
    }
}

- (IBAction)check3:(id)sender {
    [sender setSelected:YES];
    if (self.is3checked == NO) {
        self.is3checked = YES;
        [sender setTitle:@"CHECKED" forState:UIControlStateSelected];
    } else {
        self.is3checked = NO;
        [sender setTitle:@"UNCHECKED" forState:UIControlStateSelected];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"faqsToDoctor"]) {
        DoctorViewController *vc = [segue destinationViewController];
        vc.lastNameDoctor = lastNameFaqs;
        vc.firstNameDoctor = firstNameFaqs;
        vc.dobDoctor = dobFaqs;
        vc.insuranceDoctor = insuranceFaqs;
        vc.addressDoctor = addressFaqs;
        vc.guardianDoctor = guardianFaqs;
        vc.diagnosisDoctor = diagnosisFaqs;
    } else if ([segue.identifier isEqualToString:@"faqsToVisit"]) {
        VisitViewController *vc = [segue destinationViewController];
        vc.lastNameVisit = lastNameFaqs;
        vc.firstNameVisit = firstNameFaqs;
        vc.dobVisit = dobFaqs;
        vc.insuranceVisit = insuranceFaqs;
        vc.addressVisit = addressFaqs;
        vc.guardianVisit = guardianFaqs;
        vc.diagnosisVisit = diagnosisFaqs;
    } else if ([segue.identifier isEqualToString:@"faqsToEmail"]) {
        EmailViewController *vc = [segue destinationViewController];
        vc.lastNameEmail = lastNameFaqs;
        vc.firstNameEmail = firstNameFaqs;
        vc.dobEmail = dobFaqs;
        vc.insuranceEmail = insuranceFaqs;
        vc.addressEmail = addressFaqs;
        vc.guardianEmail = guardianFaqs;
        vc.diagnosisEmail = diagnosisFaqs;
        if (self.is1checked == YES) {
            vc.question1 = self.question1.text;
        } else {
            vc.question1 = @"";
        }
        if (self.is2checked == YES) {
            vc.question2 = self.question2.text;
        } else {
            vc.question2 = @"";
        }
        if (self.is3checked == YES) {
            vc.question3 = self.question3.text;
        } else {
            vc.question3 = @"";
        }
    }
}


@end
