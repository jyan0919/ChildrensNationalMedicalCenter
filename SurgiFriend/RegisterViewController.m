//
//  PatientsData.m
//  SurgiFriend
//
//  Created by Jessie on 1/10/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "RegisterViewController.h"
#import "VisitViewController.h"
#import "AppDelegate.h"

@interface RegisterViewController () {
    NSManagedObjectContext *context;
}

@end

@implementation RegisterViewController
@synthesize bg, insuranceTextfield, passwordTextfield, lastnameTextfield, firstnameTextfield, dobTextfield, addressTextfield, guardianTextfield, diagnosisTextfield, lastNameLabel, firstNameLabel, dobLabel, AddressLabel, passwordLabel, insuranceLabel, guardianLabel, diagnosisLabel, requirementLabel, donebutton, homebutton;

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == DIAGNOSIS) {
        return [arrayDiagnosis count];
    }
    if (component == POSITION) {
        return [arrayPosition count];
    }
    
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == DIAGNOSIS) {
        return [arrayDiagnosis objectAtIndex:row];
    }
    if (component == POSITION) {
        return [arrayPosition objectAtIndex:row];
    }
    
    return 0;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    diagnosisTextfield.text = [arrayDiagnosis objectAtIndex:[pickerView selectedRowInComponent:0]];
    self.positionTextfield.text = [arrayPosition objectAtIndex:[pickerView selectedRowInComponent:1]];
}

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
    //set NSManagedObjectContext
    AppDelegate *appdelegate = [[UIApplication sharedApplication]delegate];
    context = [appdelegate managedObjectContext];
    
    //set background image
    UIImage *bgImage = [UIImage imageNamed:@"bg-tree.png"];
    [bg setImage:bgImage];
    
    //set image to home button for normal state
    UIImage * btnImage = [UIImage imageNamed:@"bear-home.png"];
    [homebutton setImage:btnImage forState:UIControlStateNormal];
    
    //set text to done button for normal state
    [donebutton setTitle:@"DONE" forState:UIControlStateNormal];
    
    //set labels
    passwordLabel.text = @"Password *";
    lastNameLabel.text = @"Last Name";
    firstNameLabel.text = @"First Name";
    dobLabel.text = @"DOB";
    AddressLabel.text = @"Address";
    insuranceLabel.text = @"Insurance ID *";
    guardianLabel.text = @"Guardian";
    diagnosisLabel.text = @"Diagnosis";
    requirementLabel.text = @"* are required fields.";
    requirementLabel.textColor = [UIColor redColor];
    
    //set picker view
    arrayDiagnosis = [[NSMutableArray alloc] init];
    [arrayDiagnosis addObject:@"CIRCUMCISION"];
    [arrayDiagnosis addObject:@"HYPOSPADIAS"];
    [arrayDiagnosis addObject:@"UNDESCENDED TESTICLE"];
    arrayPosition = [[NSMutableArray alloc] initWithObjects:@"NOT APPLICABLE", @"LEFT", @"RIGHT", nil];
    
    //hide picker view
    DiagnosisPicker.hidden=YES;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(IBAction)textViewDidBeginEditing:(UITextField *)diagnosisTextfield {
    DiagnosisPicker.hidden=NO;
}*/

- (IBAction)doneRegister:(id)sender {
    
    if ([insuranceTextfield.text isEqualToString:@""] || [passwordTextfield.text isEqualToString:@""]) {
        requirementLabel.text = @"Missing required fields.";
    } else {
        NSEntityDescription *entitydesc = [NSEntityDescription entityForName:@"Patient" inManagedObjectContext:context];
        NSManagedObject *newPatient = [[NSManagedObject alloc]initWithEntity:entitydesc insertIntoManagedObjectContext:context];
        
        [newPatient setValue:insuranceTextfield.text forKey:@"insurance"];
        [newPatient setValue:passwordTextfield.text forKey:@"password"];
        [newPatient setValue:lastnameTextfield.text forKey:@"lastname"];
        [newPatient setValue:firstnameTextfield.text forKey:@"firstname"];
        [newPatient setValue:dobTextfield.text forKey:@"dob"];
        [newPatient setValue:addressTextfield.text forKey:@"address"];
        [newPatient setValue:guardianTextfield.text forKey:@"guardian"];
        [newPatient setValue:diagnosisTextfield.text forKey:@"diagnosis"];
        
        NSError *error;
        [context save:&error];
        
        //performs segue to Your Visit view
        [self performSegueWithIdentifier:@"registerToVisit" sender:self];
    }
}

- (IBAction)homeButton:(id)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"registerToVisit"]) {
        VisitViewController *vc = [segue destinationViewController];
        vc.lastNameVisit = lastnameTextfield.text;
        vc.firstNameVisit = firstnameTextfield.text;
        vc.dobVisit = dobTextfield.text;
        vc.addressVisit = addressTextfield.text;
        vc.insuranceVisit = insuranceTextfield.text;
        vc.guardianVisit = guardianTextfield.text;
        vc.diagnosisVisit = diagnosisTextfield.text;
    }
}
@end
