//
//  AIOneRoute.m
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import "AIOneRoute.h"
#import "AITwoViewController.h"
@implementation AIOneRoute

- (void)presentTwoViewControllerfrom:(UIView<AIViewOneProtocol>*)viewcontroller {
    AITwoViewController *twoVC = [[AITwoViewController alloc]init];
    [((UIViewController*)viewcontroller) presentViewController:twoVC animated:YES completion:nil];
}
@end
