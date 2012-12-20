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
    
    // Set default appearnce block for all WCAlertViews
    // Similar functionality to UIAppearnce Proxy
    
    [WCAlertView setDefaultCustomiaztonBlock:^(WCAlertView *alertView) {
        alertView.labelTextColor = [UIColor colorWithRed:0.11f green:0.08f blue:0.39f alpha:1.00f];
        alertView.labelShadowColor = [UIColor whiteColor];
        
        UIColor *topGradient = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
        UIColor *middleGradient = [UIColor colorWithRed:0.93f green:0.94f blue:0.96f alpha:1.0f];
        UIColor *bottomGradient = [UIColor colorWithRed:0.89f green:0.89f blue:0.92f alpha:1.00f];
        alertView.gradientColors = @[topGradient,middleGradient,bottomGradient];
        
        alertView.outerFrameColor = [UIColor colorWithRed:250.0f/255.0f green:250.0f/255.0f blue:250.0f/255.0f alpha:1.0f];
        
        alertView.buttonTextColor = [UIColor colorWithRed:0.11f green:0.08f blue:0.39f alpha:1.00f];
        alertView.buttonShadowColor = [UIColor whiteColor];
    }];

    
    [WCAlertView showAlertWithTitle:@"Some title" message:@"Custom message" customizationBlock:^(WCAlertView *alertView) {
        
        // You can also set different appearance for this alert using customization block
        
        alertView.style = WCAlertViewStyleBlackHatched;
        alertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    } completionBlock:^(NSUInteger buttonIndex, WCAlertView *alertView) {
        if (buttonIndex == 0) {
            NSLog(@"Cancel");
        } else {
            NSLog(@"Ok");
        }
    } cancelButtonTitle:@"Long Message test" otherButtonTitles:@"Ok", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
