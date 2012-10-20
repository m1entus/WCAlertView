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


You can use

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

## Credits

Inspired by [Aaron Crabtree -  UIAlertView Custom Graphics](http://mobile.tutsplus.com) , borrowing some general approaches in drawing Alert View.
Simple block extension got from [wannabegeek](http://github.com/wannabegeek/UIAlertViewExtentsions).

## Contact

[Michal Zaborowski](http://github.com/m1entus) 
