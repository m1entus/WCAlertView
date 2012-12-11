WCAlertView
==========

WCAlertView is a subclass from UIAlertView with possibility of customization.

You can easly custom your UIAlertView.

[![](https://raw.github.com/m1entus/WCAlertView/master/Example/1thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Example/1.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Example/2thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Example/2.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Example/3thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Example/3.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Example/4thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Example/4.png)

[![](https://raw.github.com/m1entus/WCAlertView/master/Example/5thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Example/5.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Example/6thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Example/6.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Example/7thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Example/7.png)

## How To Use

There is couple of predefined styles, you can use them, or write you own styles.

WCAlertView support blocks.

You can also set deafault appearance for all alert views:

``` objective-c
[WCAlertView setDefaultStyle:WCAlertViewStyleWhite];
```

Set default appearnce block for all WCAlertViews inside AppDelegate (similar to UIAppearance proxy)

``` objective-c
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
```

If you want to use UITextField for password or plain inputtext, use UIAlertViewStyle.

[WCAlertView showAlertWithTitle:@"Some title" message:@"Custom message" customizationBlock:^(WCAlertView *alertView) {
        
        alertView.alertViewStyle = UIAlertViewStyleSecureTextInput;
        
    } completionBlock:^(NSUInteger buttonIndex, WCAlertView *alertView) {

    } cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];


How to use:

``` objective-c
[WCAlertView showAlertWithTitle:@"Custom AlertView Title" 
					    message:@"You can do a lot of additional setup using WCAlertView." 
					    customizationBlock:^(WCAlertView *alertView) {
					    
        					alertView.style = WCAlertViewStyleVioletHatched;
        					
    } completionBlock:^(NSUInteger buttonIndex, WCAlertView *alertView) {
        
    } cancelButtonTitle:@"Cancel" otherButtonTitles:@"Okay",nil];
```

``` objective-c
WCAlertView *alert = [[WCAlertView alloc] initWithTitle:@"Custom AlertView Title" 
												message:@"You can do a lot of additional setup using WCAlertView." 
											   delegate:nil cancelButtonTitle:@"Cancel" 
											   otherButtonTitles:@"Okay", nil];
											   
    alert.style = WCAlertViewStyleVioletHatched;
    
    [alert show];
```

## Requirements

WCAlertView requires either iOS 5.0 and above.

## Credits

Inspired by [Aaron Crabtree -  UIAlertView Custom Graphics](http://mobile.tutsplus.com) , borrowing some general approaches in drawing Alert View.
Simple block extension got from [wannabegeek](http://github.com/wannabegeek/UIAlertViewExtentsions).

## Contact

[Michal Zaborowski](http://github.com/m1entus) 
