//
//  PushCountingViewController.h
//  NavigationFun
//
//  Created by David Kapp on 2/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountingNavigationController.h"

@interface PushCountingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

- (IBAction)incrementCount:(id)sender;
- (void)viewWillAppear:(BOOL)animated;
@end
