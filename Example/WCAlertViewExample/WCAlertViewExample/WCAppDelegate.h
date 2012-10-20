//
//  WCAppDelegate.h
//  WCAlertViewExample
//
//  Created by Michał Zaborowski on 20.10.2012.
//  Copyright (c) 2012 whitecode. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WCViewController;

@interface WCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) WCViewController *viewController;

@end
