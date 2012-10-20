//
//  WCViewController.m
//  WCAlertViewExample
//
//  Created by Michał Zaborowski on 20.10.2012.
//  Copyright (c) 2012 whitecode. All rights reserved.
//

#import "WCViewController.h"
#import "WCAlertView.h"

@interface WCViewController ()

@end

@implementation WCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [WCAlertView showAlertWithTitle:@"Some title" message:@"Custom message" customizationBlock:^(WCAlertView *alertView) {
        alertView.style = WCAlertViewStyleBlackHatched;
    } completionBlock:^(NSUInteger buttonIndex, WCAlertView *alertView) {
        if (buttonIndex == 0) {
            NSLog(@"Cancel");
        } else {
            NSLog(@"Ok");
        }
    } cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
