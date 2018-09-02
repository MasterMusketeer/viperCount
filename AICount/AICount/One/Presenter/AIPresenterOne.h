//
//  AIPresenterOne.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AIPresenterProtocol.h"
#import "AIInteractorProtocol.h"
#import "AIViewOneProtocol.h"
#import "AIOneRouteProtocol.h"

@interface AIPresenterOne : NSObject <AIPresenterProtocol>

@property (nonatomic,strong)id<AIInteractorOneProtocol> interctor;
@property (nonatomic,weak)id<AIViewOneProtocol> view;
@property (nonatomic,strong)id<AIOneRouteProtocol> route;

@end

