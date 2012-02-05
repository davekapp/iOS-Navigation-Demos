//
//  TapCountingViewController.m
//  NavigationFun
//
//  Created by David Kapp on 2/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TapCountingViewController.h"

@implementation TapCountingViewController
@synthesize outputLabel;
@synthesize tabBarItem;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
  [self setOutputLabel:nil];
  [self setTabBarItem:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (IBAction)incrementCountOne:(id)sender {
  CountingTabBarController *parent = (CountingTabBarController*)self.parentViewController;
  parent.countOne++;
  [self updateTabBadge];
  [self updateOutput];
}

- (IBAction)incrementCountTwo:(id)sender {
  CountingTabBarController *parent = (CountingTabBarController*)self.parentViewController;
  parent.countTwo++;
  [self updateTabBadge];
  [self updateOutput];

}

- (IBAction)incrementCountThree:(id)sender {
  CountingTabBarController *parent = (CountingTabBarController*)self.parentViewController;
  parent.countThree++;
  [self updateTabBadge];
  [self updateOutput];

}

- (void)updateOutput {
  CountingTabBarController *parent = (CountingTabBarController*)self.parentViewController;
  NSString *countString = [[NSString alloc] initWithFormat:@"一: %d\n二: %d\n 三: %d",
                           parent.countOne,
                           parent.countTwo,
                           parent.countThree];
  self.outputLabel.text = countString;
}

- (void)updateTabBadge {
  int currentBadgeCount = [self.tabBarItem.badgeValue intValue];
  NSString *newBadge = [[NSString alloc] initWithFormat:@"%d", ++currentBadgeCount];
  self.tabBarItem.badgeValue = newBadge;
}

- (void)viewDidAppear:(BOOL)animated {
  [self updateOutput];
}

@end























