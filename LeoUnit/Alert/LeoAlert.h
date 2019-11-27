//
//  LeoAlert.h
//  Example
//
//  Created by Leo on 2019/11/27.
//  Copyright © 2019 leo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LeoAlert : NSObject

/**
 弹出提示框
 
 @param superVC 父级ViewController
 @param title 标题
 @param msg 内容
 @param defaultActTitle 默认按钮的文字内容
 @param defaultFunc 默认按钮的响应
 @param cancelActTitle 取消按钮的文字内容
 @param cancelFunc 取消按钮的响应
 */
+ (void)leoAlertWithSuperVC:(UIViewController *)superVC
                      title:(NSString *)title
                    message:(NSString *)msg
         defaultActionTitle:(NSString*)defaultActTitle
             defaultActFunc:(void (^) (UIAlertAction *action))defaultFunc cancelActionTitle:(NSString*)cancelActTitle
              cancelActFunc:(void (^) (UIAlertAction *action))cancelFunc;


/**
 msg多行的提示框
 
 @param superVC 父级ViewController
 @param title 标题
 @param msg 内容
 @param defaultActTitle 默认按钮的文字内容
 @param defaultFunc 默认按钮的响应
 @param cancelActTitle 取消按钮的文字内容
 @param cancelFunc 取消按钮的响应
 */
+ (void)leoAlertMoreMsgWithSuperVC:(UIViewController *)superVC
                             title:(NSString *)title
                           message:(NSString *)msg
                defaultActionTitle:(NSString*)defaultActTitle
                    defaultActFunc:(void (^) (UIAlertAction *action))defaultFunc
                 cancelActionTitle:(NSString*)cancelActTitle
                     cancelActFunc:(void (^) (UIAlertAction *action))cancelFunc;

@end

NS_ASSUME_NONNULL_END
