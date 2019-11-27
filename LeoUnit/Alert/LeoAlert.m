//
//  LeoAlert.m
//  Example
//
//  Created by Leo on 2019/11/27.
//  Copyright © 2019 leo. All rights reserved.
//

#import "LeoAlert.h"

@implementation LeoAlert


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
              cancelActFunc:(void (^) (UIAlertAction *action))cancelFunc
{
    UIAlertController *alertCtrl = nil;
    alertCtrl = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    if ( defaultActTitle && [defaultActTitle length] )
    {
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:defaultActTitle style:UIAlertActionStyleDefault handler:defaultFunc];
        [alertCtrl addAction:okAction];
    }
    if ( cancelActTitle && [cancelActTitle length] )
    {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelActTitle style:UIAlertActionStyleCancel handler:cancelFunc];
        [alertCtrl addAction:cancelAction];
    }
    [superVC presentViewController:alertCtrl animated:YES completion:^{}];
    return;
}


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
                     cancelActFunc:(void (^) (UIAlertAction *action))cancelFunc
{
    UIAlertController *alertCtrl = nil;
    alertCtrl = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    if ( defaultActTitle && [defaultActTitle length] )
    {
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:defaultActTitle style:UIAlertActionStyleDefault handler:defaultFunc];
        [alertCtrl addAction:okAction];
    }
    if ( cancelActTitle && [cancelActTitle length] ) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelActTitle style:UIAlertActionStyleCancel handler:cancelFunc];
        [alertCtrl addAction:cancelAction];
    }
    
    UIView *subView1 = alertCtrl.view.subviews[0];
    UIView *subView2 = subView1.subviews[0];
    UIView *subView3 = subView2.subviews[0];
    UIView *subView4 = subView3.subviews[0];
    UIView *subView5 = subView4.subviews[0];
    UILabel *message = subView5.subviews[1];
    message.textAlignment = NSTextAlignmentCenter;
    
    [superVC presentViewController:alertCtrl animated:YES completion:^{}];
    return;
}

@end
