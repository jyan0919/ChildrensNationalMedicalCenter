//
//  GameViewController.m
//  SurgiFriend
//
//  Created by Jessie on 1/22/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

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
    UIImage * btnImage = [UIImage imageNamed:@"bear-home.png"];
    [self.homeButton setImage:btnImage forState:UIControlStateNormal];
    
    //set selected images
    [self.button1 setImage:[UIImage imageNamed:@"game-cross"] forState:UIControlStateSelected];
    [self.button2 setImage:[UIImage imageNamed:@"game-doc"] forState:UIControlStateSelected];
    [self.button3 setImage:[UIImage imageNamed:@"game-monitor"] forState:UIControlStateSelected];
    [self.button4 setImage:[UIImage imageNamed:@"game-nurse"] forState:UIControlStateSelected];
    [self.button5 setImage:[UIImage imageNamed:@"game-ste"] forState:UIControlStateSelected];
    [self.button6 setImage:[UIImage imageNamed:@"game-wheelchair"] forState:UIControlStateSelected];
    [self.button12 setImage:[UIImage imageNamed:@"game-cross"] forState:UIControlStateSelected];
    [self.button8 setImage:[UIImage imageNamed:@"game-doc"] forState:UIControlStateSelected];
    [self.button7 setImage:[UIImage imageNamed:@"game-monitor"] forState:UIControlStateSelected];
    [self.button11 setImage:[UIImage imageNamed:@"game-nurse"] forState:UIControlStateSelected];
    [self.button10 setImage:[UIImage imageNamed:@"game-ste"] forState:UIControlStateSelected];
    [self.button9 setImage:[UIImage imageNamed:@"game-wheelchair"] forState:UIControlStateSelected];

    
    self.is1open = NO;
    self.is2open = NO;
    self.is3open = NO;
    self.is4open = NO;
    self.is5open = NO;
    self.is6open = NO;
    self.is7open = NO;
    self.is8open = NO;
    self.is9open = NO;
    self.is10open = NO;
    self.is11open = NO;
    self.is12open = NO;
    
    self.is1matched = NO;
    self.is2matched = NO;
    self.is3matched = NO;
    self.is4matched = NO;
    self.is5matched = NO;
    self.is6matched = NO;
    self.is7matched = NO;
    self.is8matched = NO;
    self.is9matched = NO;
    self.is10matched = NO;
    self.is11matched = NO;
    self.is12matched = NO;
    
    self.count = 0;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)deselectPrev {
    if (self.is1open == YES && self.is1matched == NO) {
        self.is1open = NO;
        [self.button1 setSelected:NO];
    } else if (self.is2open == YES && self.is2matched == NO) {
        self.is2open = NO;
        [self.button2 setSelected:NO];
    } else if (self.is3open == YES && self.is3matched == NO ) {
        self.is3open = NO;
        [self.button3 setSelected:NO];
    } else if (self.is4open == YES && self.is4matched == NO) {
        self.is4open = NO;
        [self.button4 setSelected:NO];
    } else if (self.is5open == YES && self.is5matched == NO) {
        self.is5open = NO;
        [self.button5 setSelected:NO];
    } else if (self.is6open == YES && self.is6matched == NO) {
        self.is6open = NO;
        [self.button6 setSelected:NO];
    } else if (self.is7open == YES && self.is7matched == NO) {
        self.is7open = NO;
       [self.button7 setSelected:NO];
    } else if (self.is8open == YES && self.is8matched == NO) {
        self.is8open = NO;
        [self.button8 setSelected:NO];
    } else if (self.is9open == YES && self.is9matched == NO) {
        self.is9open = NO;
        [self.button9 setSelected:NO];
    } else if (self.is10open == YES && self.is10matched == NO) {
        self.is10open = NO;
        [self.button10 setSelected:NO];
    } else if (self.is11open == YES && self.is11matched == NO) {
        self.is11open = NO;
        [self.button11 setSelected:NO];
    } else if (self.is12open == YES && self.is12matched == NO) {
        self.is12open = NO;
        [self.button12 setSelected:NO];
    }

}

- (IBAction)card1:(id)sender {
    
    [sender setSelected:YES];

    if (self.count == 0) {
        self.is1open = YES;
        self.count = 1;
    }
    else if (self.count == 1) {
        if (self.is12open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is1open = NO;
        } else {
            self.is1matched = YES;
            self.is12matched = YES;
        }
        self.count = 0; 
    }
}

- (IBAction)card2:(id)sender {
    [sender setSelected:YES];
    if (self.count == 0) {
        //self.result.text = @"2 selected again";
        self.is2open = YES;
        self.count = 1;
    }
    else if (self.count == 1) {
        //self.result.text = @"2 selected with 1 opened";
        if (self.is8open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is2open = NO;
        } else {
            self.is2matched = YES;
            self.is8matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card3:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is3open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is7open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is3open = NO;

        } else {
            self.is3matched = YES;
            self.is7matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card4:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is4open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is11open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is4open = NO;
        } else {
            self.is4matched = YES;
            self.is11matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card5:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is5open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is10open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is5open = NO;
        } else {
            self.is5matched = YES;
            self.is10matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card6:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is6open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is9open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is6open = NO;
        } else {
            self.is6matched = YES;
            self.is9matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card7:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is7open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is3open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is7open = NO;
        } else {
            self.is7matched = YES;
            self.is3matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card8:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is8open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is2open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is8open = NO;
        } else {
            self.is8matched = YES;
            self.is2matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card9:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is9open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is6open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is9open = NO;
        } else {
            self.is9matched = YES;
            self.is6matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card10:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is10open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is5open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is10open = NO;
        } else {
            self.is10matched = YES;
            self.is5matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card11:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is11open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is4open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is11open = NO;
        } else {
            self.is11matched = YES;
            self.is4matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)card12:(id)sender {
    [sender setSelected:YES];
    
    if (self.count == 0) {
        self.is12open = YES;
        self.count = 1;
    }
    
    else if (self.count == 1) {
        if (self.is1open == NO) {
            [self deselectPrev];
            [sender setSelected:NO];
            self.is12open = NO;
        } else {
            self.is12matched = YES;
            self.is1matched = YES;
        }
        self.count = 0;
    }
}

- (IBAction)restart:(id)sender {
    /*[self.button1 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button2 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button3 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button4 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button5 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button6 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button7 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button8 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button9 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button10 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button11 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    [self.button12 setImage:[UIImage imageNamed:@"game-bg"] forState:UIControlStateNormal];
    */
    [self.button1 setSelected:NO];
    [self.button2 setSelected:NO];
    [self.button3 setSelected:NO];
    [self.button4 setSelected:NO];
    [self.button5 setSelected:NO];
    [self.button6 setSelected:NO];
    [self.button7 setSelected:NO];
    [self.button8 setSelected:NO];
    [self.button9 setSelected:NO];
    [self.button10 setSelected:NO];
    [self.button11 setSelected:NO];
    [self.button12 setSelected:NO];
    
    self.is1open = NO;
    self.is2open = NO;
    self.is3open = NO;
    self.is4open = NO;
    self.is5open = NO;
    self.is6open = NO;
    self.is7open = NO;
    self.is8open = NO;
    self.is9open = NO;
    self.is10open = NO;
    self.is11open = NO;
    self.is12open = NO;
    
    self.is1matched = NO;
    self.is2matched = NO;
    self.is3matched = NO;
    self.is4matched = NO;
    self.is5matched = NO;
    self.is6matched = NO;
    self.is7matched = NO;
    self.is8matched = NO;
    self.is9matched = NO;
    self.is10matched = NO;
    self.is11matched = NO;
    self.is12matched = NO;
    
    self.count = 0;
}
@end
