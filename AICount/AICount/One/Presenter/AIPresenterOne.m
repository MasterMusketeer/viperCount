//
//  AIPresenterOne.m
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import "AIPresenterOne.h"

@implementation AIPresenterOne
@synthesize labelChanel = _labelChanel;
@synthesize textChanel  = _textChanel;

- (RACSignal*)addFunction {
    __weak typeof(self)weakSelf = self;
    return [[self.interctor interacotrAddFunction]filter:^BOOL(NSNumber *value) {
        if (value.integerValue > 10) {
            [weakSelf.route presentTwoViewControllerfrom:weakSelf.view];
            return NO;
        } else {
            return YES;
        }
    }];;
}
- (RACSignal*)lessFunction {
    return [self.interctor interacotrLessFunction];
}

- (RACCommand*)setNumberFunction {
    return [self.view setLabelNumber];
}

- (void)bindChanel {
    [self.textChanel subscribe:self.labelChanel];
    [self.labelChanel subscribe:self.textChanel];
}

-(void)setLabelChanel:(RACChannelTerminal *)labelChanel {
    _labelChanel = labelChanel;
}
-(RACChannelTerminal *)getLabelChanel {
    return _labelChanel;
}

-(void)setTextChanel:(RACChannelTerminal *)textChanel {
    _textChanel = textChanel;
}

-(RACChannelTerminal *)getTextChanel {
    return _textChanel;
}
@end
