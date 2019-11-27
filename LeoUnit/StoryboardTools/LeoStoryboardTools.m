//
//  LeoStoryboardTools.m
//  Example
//
//  Created by Leo on 2019/11/27.
//  Copyright © 2019 leo. All rights reserved.
//

#import "LeoStoryboardTools.h"

@implementation LeoStoryboardTools

+ (UIViewController *)leoGetVCWithStoryboardName:(NSString*)storyboardName
                                        withVCId:(NSString*)vcId
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:vcId];
    return vc;
}

+ (UIView *)leoGetViewWithNibName:(NSString *)nibName
{
    return [[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil].firstObject;
}

+ (UITableViewCell *)leoGetCellWithIdentifier:(NSString *)cellIdentifier
{
    return [[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:nil options:nil].firstObject;
}

+ (UICollectionViewCell *)leoGetCCellWithIdentifier:(NSString *)identifier
{
    return [[NSBundle mainBundle] loadNibNamed:identifier owner:nil options:nil].firstObject;
}

@end
