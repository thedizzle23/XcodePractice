//
//  TextFieldWithNumberViewController.m
//  TextFieldWithNumber
//
//  Created by Chakra on 23/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TextFieldWithNumberViewController.h"

@implementation TextFieldWithNumberViewController


@synthesize text;

- (void)viewDidLoad {
	text.delegate = self;
    [super viewDidLoad];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
	[textField resignFirstResponder];
	return YES;
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
   
    
    if([newString length] > 8)
    {
       
        UIAlertView *obj_AlertView=[[UIAlertView alloc]initWithTitle:@""
                                                             message:@"Enter 8 digit only" 
                                                            delegate:self 
                                                   cancelButtonTitle:@"OK" 
                                                   otherButtonTitles:nil];
        [obj_AlertView show];

        
         return !([newString length] > 8);
    }
}


-(void)touchesBegan :(NSSet *)touches withEvent:(UIEvent *)event
{
	[text resignFirstResponder];
	[super touchesBegan:touches withEvent:event];
}

- (void)viewDidUnload {
	
}



@end
