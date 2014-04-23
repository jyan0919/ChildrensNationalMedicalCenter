//
//  GameViewController.h
//  SurgiFriend
//
//  Created by Jessie on 1/22/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *bg;
@property (strong, nonatomic) IBOutlet UIButton *homeButton;

- (IBAction)card1:(id)sender;
- (IBAction)card2:(id)sender;
- (IBAction)card3:(id)sender;
- (IBAction)card4:(id)sender;
- (IBAction)card5:(id)sender;
- (IBAction)card6:(id)sender;
- (IBAction)card7:(id)sender;
- (IBAction)card8:(id)sender;
- (IBAction)card9:(id)sender;
- (IBAction)card10:(id)sender;
- (IBAction)card11:(id)sender;
- (IBAction)card12:(id)sender;
- (IBAction)restart:(id)sender;


@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet UIButton *button4;
@property (strong, nonatomic) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet UIButton *button6;
@property (strong, nonatomic) IBOutlet UIButton *button7;
@property (strong, nonatomic) IBOutlet UIButton *button8;
@property (strong, nonatomic) IBOutlet UIButton *button9;
@property (strong, nonatomic) IBOutlet UIButton *button10;
@property (strong, nonatomic) IBOutlet UIButton *button11;
@property (strong, nonatomic) IBOutlet UIButton *button12;


@property (nonatomic) BOOL is1open;
@property (nonatomic) BOOL is2open;
@property (nonatomic) BOOL is3open;
@property (nonatomic) BOOL is4open;
@property (nonatomic) BOOL is5open;
@property (nonatomic) BOOL is6open;
@property (nonatomic) BOOL is7open;
@property (nonatomic) BOOL is8open;
@property (nonatomic) BOOL is9open;
@property (nonatomic) BOOL is10open;
@property (nonatomic) BOOL is11open;
@property (nonatomic) BOOL is12open;

@property (nonatomic) BOOL istempopen;

@property (nonatomic) BOOL is1matched;
@property (nonatomic) BOOL is2matched;
@property (nonatomic) BOOL is3matched;
@property (nonatomic) BOOL is4matched;
@property (nonatomic) BOOL is5matched;
@property (nonatomic) BOOL is6matched;
@property (nonatomic) BOOL is7matched;
@property (nonatomic) BOOL is8matched;
@property (nonatomic) BOOL is9matched;
@property (nonatomic) BOOL is10matched;
@property (nonatomic) BOOL is11matched;
@property (nonatomic) BOOL is12matched;

@property (nonatomic) int count;

@end
