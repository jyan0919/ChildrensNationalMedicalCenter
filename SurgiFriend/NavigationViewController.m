//
//  NavigationViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/14/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "NavigationViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController
@synthesize bg, registerButton, loginButton, contactusButton, miniGameButton;

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
    
    //set image to register button for normal state
    UIImage * btnImage1 = [UIImage imageNamed:@"bear-register.png"];
    [registerButton setImage:btnImage1 forState:UIControlStateNormal];
    
    //set image to yourVisit button for normal state
    UIImage * btnImage2 = [UIImage imageNamed:@"bear-signin.png"];
    [loginButton setImage:btnImage2 forState:UIControlStateNormal];
    
    //set image to emailMyself button for normal state
    UIImage * btnImage3 = [UIImage imageNamed:@"bear-contactus.png"];
    [contactusButton setImage:btnImage3 forState:UIControlStateNormal];
    
    //set image to miniGame button for normal state
    UIImage * btnImage4 = [UIImage imageNamed:@"bear-minigame.png"];
    [miniGameButton setImage:btnImage4 forState:UIControlStateNormal];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)contactus:(id)sender {
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    [mailComposer setMailComposeDelegate:self];
    
    //set email addresses as array and give an example address
    NSArray *emailAddresses = [[NSArray alloc] initWithObjects:@"tbear@childrensnational.org", nil];
    [mailComposer setToRecipients:emailAddresses];
    [mailComposer setSubject:@"Query from Patient"];
    [mailComposer setMessageBody:@"Patient's Name:\nPatient's Email Address:\n\n(Please fill out the above information.)" isHTML:NO];
    
    // Present mail view controller on screen
    [self presentViewController:mailComposer animated:YES completion:nil];
}

//finishes sending email
- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
