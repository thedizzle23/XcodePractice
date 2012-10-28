//
//  ViewController.m
//  ActionShettAlertViewTutorial
//
//  Created by Robert DeNicola on 10/27/12.
//  Copyright (c) 2012 Robert DeNicola DevelopMental iOS Applications. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize displayLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    
    NSString *messageString = @"MESSAGE";
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Welcome To the TestsMain" message:messageString delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"DONE", nil];
    [alertView setAlertViewStyle:UIAlertViewStyleDefault];
     [alertView setBackgroundColor:[UIColor orangeColor]];
    [alertView show];
    
    
    
}

- (IBAction)showActionSheetNow:(id)sender {
    
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Welcome to ActionSheet" delegate:self cancelButtonTitle:@"CANCEL" destructiveButtonTitle:@"FINISHED" otherButtonTitles:@"NEVERMIND", @"ONE", @"TWO", @"THREE", nil];
    [actionSheet setActionSheetStyle:UIActionSheetStyleBlackTranslucent];
    [actionSheet showInView:self.view];
    
    
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    
    
    
    if (buttonIndex == 1) {
        [[self displayLabel] setText:@"Test Display"];
    }
        else if (buttonIndex == 2) {
            [[self displayLabel] setText:@"Good Work Rob"];
        }
    
    
}

@end
