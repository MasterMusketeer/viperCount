//
//  AIInteractor.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//


#import <ReactiveObjC.h>
@class RACSignal;
@protocol AIInteractorOneProtocol <NSObject>

- (RACSignal*)interacotrAddFunction;
- (RACSignal*)interacotrLessFunction;
- (RACChannelTerminal*)getInteractorNumberChannel;
@end
