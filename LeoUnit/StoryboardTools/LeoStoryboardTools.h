//
//  LeoStoryboardTools.h
//  Example
//
//  Created by Leo on 2019/11/27.
//  Copyright © 2019 leo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LeoStoryboardTools : NSObject

+ (UIViewController *)leoGetVCWithStoryboardName:(NSString*)storyboardName
                                        withVCId:(NSString*)vcId;
+ (UIView *)leoGetViewWithNibName:(NSString *)nibName;
+ (UITableViewCell *)leoGetCellWithIdentifier:(NSString *)cellIdentifier;
+ (UICollectionViewCell *)leoGetCCellWithIdentifier:(NSString *)identifier;

@end

NS_ASSUME_NONNULL_END
