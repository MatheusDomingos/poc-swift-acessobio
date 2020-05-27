//
//  Alerts.h
//  e-camaleao
//
//  Created by Matheus Domingos on 05/03/18.
//  Copyright © 2018 Matheus Domingos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Alerts : NSObject

+ (void)showAlertJustTitle:(NSString*)title view:(UIViewController*)view;
+ (void)showAlertJustTitle:(NSString*)title view:(UIViewController*)view actionSelector:(SEL) actionSelector;
+ (void)showAlert:(NSString*)title message:(NSString *)message view:(UIViewController*)view;
+ (void)showAlertLogout:(NSString*)title view:(UIViewController*)view actionSelector:(SEL) actionSelector;

@end
