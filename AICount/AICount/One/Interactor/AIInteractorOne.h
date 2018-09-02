//
//  AIInteractorOne.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AIPresenterProtocol.h"
#import "AIInteractorProtocol.h"

@interface AIInteractorOne : NSObject <AIInteractorOneProtocol>
@property (nonatomic,weak)id<AIPresenterProtocol> presentOne;
@end

