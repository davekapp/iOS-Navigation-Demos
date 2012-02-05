//
//  TapCountingViewController.h
//  NavigationFun
//
//  Created by David Kapp on 2/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountingTabBarController.h"

@interface TapCountingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabBarItem;

- (IBAction)incrementCountOne:(id)sender;
- (IBAction)incrementCountTwo:(id)sender;
- (IBAction)incrementCountThree:(id)sender;

- (void)updateOutput;
- (void)updateTabBadge;
- (void)viewDidAppear:(BOOL)animated;
@end
