//
//  AIInteractorOne.m
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import "AIInteractorOne.h"
#import "AIPresenterOne.h"
#import "AIOneEntity.h"
@interface AIInteractorOne ()
@property (nonatomic, strong)   AIOneEntity  *entity;
@end

@implementation AIInteractorOne

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.entity = [[AIOneEntity alloc]init];
        __weak typeof(self)weakSelf = self;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            weakSelf.entity.textString = @"2121";
//            [[weakSelf.presentOne setNumberFunction] execute:@"123"];
        });
    }
    return self;
}
- (RACChannelTerminal*)getTextStringChannel {
    return RACChannelTo(self, self.entity.textString);
}

- (RACSignal*)interacotrAddFunction {
    __weak typeof(self)weakSelf = self;
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        weakSelf.entity.number++;
        [subscriber sendNext:@(weakSelf.entity.number)];
        return [RACDisposable disposableWithBlock:^{
            
        }];
    }];
}
- (RACSignal*)interacotrLessFunction {
    __weak typeof(self)weakSelf = self;
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        weakSelf.entity.number--;
        [subscriber sendNext:@(weakSelf.entity.number)];
        return [RACDisposable disposableWithBlock:^{
            
        }];
    }];
}

- (RACSignal*)interacotrGetNumberFunction {
    __weak typeof(self)weakSelf = self;
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        [subscriber sendNext:@(weakSelf.entity.number)];
        return [RACDisposable disposableWithBlock:^{
            
        }];
    }];
}

- (RACSignal*)interacotrSetNumberFunction:(NSInteger)number {
    
    return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        [subscriber sendNext:@(number)];
        return [RACDisposable disposableWithBlock:^{
            
        }];
    }];
}
@end
