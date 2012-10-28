//
//  RobsDefaultFacebookviewController.m
//  ActionShettAlertViewTutorial
//
//  Created by Robert DeNicola on 10/28/12.
//  Copyright (c) 2012 Robert DeNicola DevelopMental iOS Applications. All rights reserved.
//

#import "RobsDefaultFacebookviewController.h"

@interface RobsDefaultFacebookviewController ()

@end

@implementation RobsDefaultFacebookviewController

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
    [super viewDidLoad];
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.facebook.com//"]]];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
