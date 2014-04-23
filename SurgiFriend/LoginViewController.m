//
//  LoginViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/15/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"
#import "ForshowViewController.h"

@interface LoginViewController () {
    NSManagedObjectContext *context;
}

@end

@implementation LoginViewController

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
    AppDelegate *appdelegate = [[UIApplication sharedApplication]delegate];
    context = [appdelegate managedObjectContext];
    
    //set background image
    UIImage *bgImage = [UIImage imageNamed:@"bg-tree.png"];
    [self.bg setImage:bgImage];
    
    //set home button image
    [self.backhomeButton setImage:[UIImage imageNamed:@"bear-home"] forState:UIControlStateNormal];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    NSEntityDescription *entitydesc = [NSEntityDescription entityForName:@"Patient" inManagedObjectContext:context];
    NSFetchRequest *request = [[NSFetchRequest alloc]init];
    [request setEntity:entitydesc];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"insurance == %@ and password == %@", self.insuranceTextfield.text, self.passwordTextfield.text];
    [request setPredicate:predicate];
    
    NSError *error;
    NSArray *matchingData = [context executeFetchRequest:request error:&error];
    
    //check if anything's found
    if (matchingData.count <= 0) {
        self.resultLabel.textColor = [UIColor redColor];
        self.resultLabel.text = @"Invalid Login.";
    } else {
        for (NSManagedObject *obj in matchingData) {
            self.lastName = [obj valueForKey:@"lastname"];
            self.firstName = [obj valueForKey:@"firstname"];
            self.dob = [obj valueForKey:@"dob"];
            self.address = [obj valueForKey:@"address"];
            self.insurance = [obj valueForKey:@"insurance"];
            self.guardian = [obj valueForKey:@"guardian"];
            self.diagnosis = [obj valueForKey:@"diagnosis"];
        }
        //self.resultLabel.text = diagnoseP;
        [self performSegueWithIdentifier:@"loginToOption" sender:self];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"loginToOption"]) {
        ForshowViewController *vc = [segue destinationViewController];
        vc.lastName = self.lastName;
        vc.firstName = self.firstName;
        vc.dob = self.dob;
        vc.address = self.address;
        vc.insurance = self.insurance;
        vc.guardian = self.guardian;
        vc.diagnosis = self.diagnosis;
    }
}
@end
