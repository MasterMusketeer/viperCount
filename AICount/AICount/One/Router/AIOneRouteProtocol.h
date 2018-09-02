//
//  AIOneRouteProtocol.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#ifndef AIOneRouteProtocol_h
#define AIOneRouteProtocol_h

#import "AIViewOneProtocol.h"
#import <UIKit/UIKit.h>
@protocol AIOneRouteProtocol <NSObject>

- (void)presentTwoViewControllerfrom:(id<AIViewOneProtocol>)viewcontroller;

@end
#endif /* AIOneRouteProtocol_h */
