WCAlertView
==========

WCAlertView is a subclass from UIAlertView with possibility of customization.

You can easly customize your UIAlertView.

[![](https://raw.github.com/m1entus/WCAlertView/master/Screens/1thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Screens/1.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Screens/2thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Screens/2.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Screens/3thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Screens/3.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Screens/4thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Screens/4.png)

[![](https://raw.github.com/m1entus/WCAlertView/master/Screens/5thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Screens/5.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Screens/6thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Screens/6.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Screens/7thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Screens/7.png)
[![](https://raw.github.com/m1entus/WCAlertView/master/Screens/8thumb.png)](https://raw.github.com/m1entus/WCAlertView/master/Screens/8.png)

## How To Use

There are a couple of predefined styles, you might use them instead of writing your own.

WCAlertView supports blocks.

You might set default appearance for all WCAlertView's:

``` objective-c
[WCAlertView setDefaultStyle:WCAlertViewStyleWhite];
```

Set default appearnce block for all WCAlertView's inside AppDelegate (similar to UIAppearance proxy)

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

If you want to use UITextField for password or plain input text, use UIAlertViewStyle (available since iOS 5.x).

``` objective-c
[WCAlertView showAlertWithTitle:@"Some title" message:@"Custom message" customizationBlock:^(WCAlertView *alertView) {
        
        alertView.alertViewStyle = UIAlertViewStyleSecureTextInput;
        
    } completionBlock:^(NSUInteger buttonIndex, WCAlertView *alertView) {

    } cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
```

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

WCAlertView requires either iOS 4.3 and above.

If you want full functionality, please use iOS 5.x and above. 

## License

WCAlertView is available under the MIT license. See the LICENSE file for more info.

## ARC

WCAlertView uses ARC.

## Credits

Inspired by [Aaron Crabtree -  UIAlertView Custom Graphics](http://mobile.tutsplus.com) , borrowed some general approaches in drawing Alert View.
Simple block extension got from [wannabegeek](http://github.com/wannabegeek/UIAlertViewExtentsions).

## Contact

[Michal Zaborowski](http://github.com/m1entus) 
