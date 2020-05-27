//
//  Alerts.m
//  e-camaleao
//
//  Created by Matheus Domingos on 05/03/18.
//  Copyright © 2018 Matheus Domingos. All rights reserved.
//

#import "Alerts.h"

@implementation Alerts


+ (void)showAlertJustTitle:(NSString*)title view:(UIViewController*)view{

    UIAlertController * alert=   [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                         {
                             [alert dismissViewControllerAnimated:YES completion:nil];
                         }];
    [alert addAction:ok];
    [view presentViewController:alert animated:YES completion:nil];
}


+ (void)showAlertJustTitle:(NSString*)title view:(UIViewController*)view actionSelector:(SEL) actionSelector
{
    UIAlertController * alert=   [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                         {
                             [view performSelector:actionSelector withObject:nil afterDelay:0];
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    [alert addAction:ok];
    [view presentViewController:alert animated:YES completion:nil];
}

+ (void)showAlert:(NSString*)title message:(NSString *)message view:(UIViewController*)view{
    UIAlertController * alert=   [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                         {
                             [alert dismissViewControllerAnimated:YES completion:nil];
                         }];
    [alert addAction:ok];
    [view presentViewController:alert animated:YES completion:nil];
}

+ (void)showAlertTapError:(NSString*)title message:(NSString *)message view:(UIViewController*)view{
    
    UIAlertController * alert=   [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* repeatProccess = [UIAlertAction actionWithTitle:@"Repetir processo" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                                     {
                                         [alert dismissViewControllerAnimated:YES completion:nil];
                                     }];
    [alert addAction:repeatProccess];
    
    UIAlertAction* cancelar = [UIAlertAction actionWithTitle:@"Cancelar" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action)
                               {
                                   [alert dismissViewControllerAnimated:YES completion:nil];
                               }];
    [alert addAction:repeatProccess];
    [alert addAction:cancelar];
    
    [view presentViewController:alert animated:YES completion:nil];
    
}

+ (void)showAlertLogout:(NSString*)title view:(UIViewController*)view actionSelector:(SEL) actionSelector
{
    UIAlertController * alert=   [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"Sair" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                         {
                             [view performSelector:actionSelector withObject:nil afterDelay:0];
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancelar" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action)
                             {
                             }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [view presentViewController:alert animated:YES completion:nil];
}


@end
