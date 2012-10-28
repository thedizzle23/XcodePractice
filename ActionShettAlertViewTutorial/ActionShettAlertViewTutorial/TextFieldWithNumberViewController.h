//
//  TextFieldWithNumberViewController.h
//  TextFieldWithNumber
//
//  Created by Chakra on 23/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "TestButtonViewController.h"

@interface TextFieldWithNumberViewController : UIViewController < UITextFieldDelegate > {
	IBOutlet UITextField *text;
}

@property (nonatomic ,strong) IBOutlet UITextField *text;


//-(IBAction)switchModalFile:(UIButton *)sender;
@end
