//
//  ForshowViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/22/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "ForshowViewController.h"
#import "VisitViewController.h"

@interface ForshowViewController ()

@end

@implementation ForshowViewController

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
    [self.bg setImage:bgImage];
    
    //set image to home button for normal state
    UIImage * btnImage = [UIImage imageNamed:@"bear-signin.png"];
    [self.signinButton setImage:btnImage forState:UIControlStateNormal];
    
    self.welcomeLabel.text = [NSString stringWithFormat:@"Welcome back, %@!", self.firstName];
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"forshowToVisit"]) {
        VisitViewController *vc = [segue destinationViewController];
        vc.lastNameVisit = self.lastName;
        vc.firstNameVisit = self.firstName;
        vc.dobVisit = self.dob;
        vc.addressVisit = self.address;
        vc.insuranceVisit = self.insurance;
        vc.guardianVisit = self.guardian;
        vc.diagnosisVisit = self.diagnosis;
    }
}

@end
