//
//  PatientsData.h
//  SurgiFriend
//
//  Created by Jessie on 1/10/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>
#define DIAGNOSIS 0
#define POSITION 1

@interface RegisterViewController : UIViewController

<UIPickerViewDataSource, UIPickerViewDelegate> {
    IBOutlet UIPickerView *DiagnosisPicker;
    
    NSMutableArray *arrayDiagnosis;
    NSMutableArray *arrayPosition;
}

@property (weak, nonatomic) IBOutlet UIImageView *bg;

@property (nonatomic, strong) IBOutlet UITextField *lastnameTextfield;
@property (strong, nonatomic) IBOutlet UITextField *firstnameTextfield;
@property (strong, nonatomic) IBOutlet UITextField *dobTextfield;
@property (strong, nonatomic) IBOutlet UITextField *addressTextfield;
@property (strong, nonatomic) IBOutlet UITextField *insuranceTextfield;
@property (strong, nonatomic) IBOutlet UITextField *guardianTextfield;
@property (strong, nonatomic) IBOutlet UITextField *diagnosisTextfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextfield;
@property (weak, nonatomic) IBOutlet UITextField *positionTextfield;


@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dobLabel;
@property (weak, nonatomic) IBOutlet UILabel *AddressLabel;
@property (weak, nonatomic) IBOutlet UILabel *insuranceLabel;
@property (weak, nonatomic) IBOutlet UILabel *guardianLabel;
@property (weak, nonatomic) IBOutlet UILabel *diagnosisLabel;
@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;
@property (weak, nonatomic) IBOutlet UILabel *requirementLabel;

@property (weak, nonatomic) IBOutlet UIButton *donebutton;
@property (weak, nonatomic) IBOutlet UIButton *homebutton;

- (IBAction)doneRegister:(id)sender;
- (IBAction)homeButton:(id)sender;

@end
