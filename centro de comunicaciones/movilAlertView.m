//
//  movilAlertView.m
//  bancocaroni
//
//  Created by Darwin Morales on 16/2/17.
//  Copyright © 2017 TotalTexto. All rights reserved.
//

#import "movilAlertView.h"

#define ALERTACTION_CANCEL 1
#define ALERTACTION_OTHER 2

//@implementation Banco100MovilAlertView
@implementation UIAlertController (NTAlertController)

+ (instancetype)showAlertIn:(UIViewController *)controller
                  WithTitle:(NSString *)title
                    message:(NSString *)message
          cancelButtonTitle:(NSString *)cancelButtonTitle
          otherButtonTitles:(NSString *)otherButtonTitle
                   tapBlock:(UIAlertCompletionBlock)tapBlock {
    
    UIAlertController *alertController = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    if(cancelButtonTitle != nil) {
        
        UIAlertAction *cancelButton = [UIAlertAction
                                       actionWithTitle:cancelButtonTitle
                                       style:UIAlertActionStyleCancel
                                       handler:^(UIAlertAction *action)
                                       {
                                           tapBlock(alertController, ALERTACTION_CANCEL); // CANCEL BUTTON CALL BACK ACTION
                                       }];
        [alertController addAction:cancelButton];
        
    }
    
    if(otherButtonTitle != nil) {
        
        UIAlertAction *otherButton = [UIAlertAction
                                      actionWithTitle:otherButtonTitle
                                      style:UIAlertActionStyleDefault
                                      handler:^(UIAlertAction *action)
                                      {
                                          tapBlock(alertController, ALERTACTION_OTHER); // OTHER BUTTON CALL BACK ACTION
                                      }];
        
        [alertController addAction:otherButton];
    }
    
    [controller presentViewController:alertController animated:YES completion:nil];
    
    return alertController;
}



@end
