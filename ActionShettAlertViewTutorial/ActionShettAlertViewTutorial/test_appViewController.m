//
//  test_appViewController.m
//  test-app
//
//  http://iPhoneDeveloperTips.com
//

#define SCROLLVIEW_HEIGHT 460
#define SCROLLVIEW_WIDTH  320

#define SCROLLVIEW_CONTENT_HEIGHT 720
#define SCROLLVIEW_CONTENT_WIDTH  320

#import "test_appViewController.h"

@implementation test_appViewController

- (void) viewWillAppear:(BOOL)animated 
{
	[super viewWillAppear:animated];
	NSLog(@"Registering for keyboard events");
  
	// Register for the events
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (keyboardDidShow:)
												 name: UIKeyboardDidShowNotification object:nil];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (keyboardDidHide:)
												 name: UIKeyboardDidHideNotification object:nil];

	//Initially the keyboard is hidden
	keyboardVisible = NO;	
}

-(void) viewWillDisappear:(BOOL)animated 
{
	NSLog (@"Unregister for keyboard events");
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void) keyboardDidShow: (NSNotification *)notif 
{
	// If keyboard is visible, return
	if (keyboardVisible) 
  {
		NSLog(@"Keyboard is already visible. Ignore notification.");
		return;
	}
		
	// Get the size of the keyboard.
	NSDictionary* info = [notif userInfo];
	NSValue* aValue = [info objectForKey:UIKeyboardBoundsUserInfoKey];
	CGSize keyboardSize = [aValue CGRectValue].size;
	
  // Save the current location so we can restore
  // when keyboard is dismissed
  offset = scrollview.contentOffset;
  
	// Resize the scroll view to make room for the keyboard
	CGRect viewFrame = scrollview.frame;
	viewFrame.size.height -= keyboardSize.height;
	scrollview.frame = viewFrame;

	// Keyboard is now visible
	keyboardVisible = YES;
}

-(void) keyboardDidHide: (NSNotification *)notif 
{
	// Is the keyboard already shown
	if (!keyboardVisible) 
  {
		NSLog(@"Keyboard is already hidden. Ignore notification.");
		return;
	}
	
	// Reset the frame scroll view to its original value
  scrollview.frame = CGRectMake(0, 0, SCROLLVIEW_WIDTH, SCROLLVIEW_HEIGHT);

	// Reset the scrollview to previous location
  scrollview.contentOffset = offset;
  
	// Keyboard is no longer visible
	keyboardVisible = NO;
	
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	return YES;
}

- (id)init
{
  if (self = [super init]) 
  {
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
		self.view.backgroundColor = [UIColor whiteColor];

		// Create scrollview
		scrollview = [[UIScrollView alloc] init];      
    scrollview.contentSize = CGSizeMake(SCROLLVIEW_CONTENT_WIDTH, SCROLLVIEW_CONTENT_HEIGHT);
    scrollview.frame = CGRectMake(0, 0, SCROLLVIEW_WIDTH, SCROLLVIEW_HEIGHT);
    scrollview.scrollsToTop = NO;
    scrollview.delegate = self;
		[self.view addSubview:scrollview];
    
		// Create textfield 1
    textfield = [[UITextField alloc] initWithFrame:CGRectMake(20, 240, 280, 30)];
    textfield.placeholder = @"Textfield 1";
		textfield.delegate = self;
		textfield.returnKeyType = UIReturnKeyDone;
    textfield.autocapitalizationType = UITextAutocapitalizationTypeNone;
    textfield.borderStyle = UITextBorderStyleBezel;
		textfield.enablesReturnKeyAutomatically = TRUE;
		[scrollview addSubview:textfield];  

		// Create textfield 2
    textfield2 = [[UITextField alloc] initWithFrame:CGRectMake(20, 290, 280, 30)];
    textfield2.placeholder = @"Textfield 2";
		textfield2.delegate = self;
		textfield2.returnKeyType = UIReturnKeyDone;
    textfield2.autocapitalizationType = UITextAutocapitalizationTypeNone;
		textfield2.borderStyle = UITextBorderStyleBezel;
		textfield2.enablesReturnKeyAutomatically = TRUE;
		[scrollview addSubview:textfield2];  
  }
  
  return self;  
}


@end
