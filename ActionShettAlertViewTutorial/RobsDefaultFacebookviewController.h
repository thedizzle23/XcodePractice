//
//  RobsDefaultFacebookviewController.h
//  ActionShettAlertViewTutorial
//
//  Created by Robert DeNicola on 10/28/12.
//  Copyright (c) 2012 Robert DeNicola DevelopMental iOS Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RobsDefaultFacebookviewController : UIViewController <UIWebViewDelegate> {
    
    IBOutlet UIWebView *webView;
    
}

@property (strong, nonatomic) IBOutlet UIWebView *webView;


@end
