//
//  TestButtonViewController.h
//  testAll
//
//  Created by Water Lou on 05/06/2011.
//  Copyright 2011 First Water Tech Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "TextFieldWithNumberViewController.h"
#import "TestButtonViewController.h"
//@protocol UYLPresentedViewControllerDelegate <NSObject>
@protocol TestButtonViewControllerDelegate <NSObject>
- (void)didDismissPresentedViewController;
@end

@interface TestButtonViewController : UIViewController <TestButtonViewControllerDelegate>{
    
}


@property (nonatomic, weak) id<TestButtonViewControllerDelegate> delegate;

//@protocol UYLPresentedViewControllerDelegate <NSObject>

- (IBAction)didSelectDone:(UIButton *)sender;

@end
