//
//  test_appViewController.h
//  test-app
//
//  http://iPhoneDeveloperTips.com
//

#import <UIKit/UIKit.h>

@interface test_appViewController : UIViewController  <UIScrollViewDelegate, UITextFieldDelegate>
{
	BOOL 					keyboardVisible;
  CGPoint				offset;
	UIScrollView 	*scrollview;

    
    //programatic textfields//
    
    UITextField		*textfield;
    UITextField		*textfield2;
    
   // IBOutlet UITextField *textField3;
}

@end

