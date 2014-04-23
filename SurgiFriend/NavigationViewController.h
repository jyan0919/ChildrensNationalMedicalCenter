//
//  NavigationViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/14/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface NavigationViewController : UIViewController <MFMailComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *bg;

@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *contactusButton;
@property (weak, nonatomic) IBOutlet UIButton *miniGameButton;


- (IBAction)contactus:(id)sender;
@end
