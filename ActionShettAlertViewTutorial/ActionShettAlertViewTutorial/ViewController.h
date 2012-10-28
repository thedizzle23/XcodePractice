//
//  ViewController.h
//  ActionShettAlertViewTutorial
//
//  Created by Robert DeNicola on 10/27/12.
//  Copyright (c) 2012 Robert DeNicola DevelopMental iOS Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
- (IBAction)showAlert:(id)sender;
- (IBAction)showActionSheetNow:(id)sender;

@end
