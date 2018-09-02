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

- (void)presentTwoViewControllerfrom:(id<AIViewOneProtocol>)viewcontroller {
    AITwoViewController *twoVC   = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"AITwoViewController"];
    UIViewController *controller = (UIViewController*)viewcontroller;
    [controller presentViewController:twoVC animated:YES completion:nil];
}
@end
