//
//  movilAlertView.h
//  bancocaroni
//
//  Created by Darwin Morales on 16/2/17.
//  Copyright © 2017 TotalTexto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^UIAlertCompletionBlock) (UIAlertController *alertViewController, NSInteger buttonIndex);

@interface UIAlertController (movilAlertView)

+ (instancetype)showAlertIn:(UIViewController *)controller
                  WithTitle:(NSString *)title
                    message:(NSString *)message
          cancelButtonTitle:(NSString *)cancelButtonTitle
          otherButtonTitles:(NSString *)otherButtonTitle
                   tapBlock:(UIAlertCompletionBlock)tapBlock;
@end

