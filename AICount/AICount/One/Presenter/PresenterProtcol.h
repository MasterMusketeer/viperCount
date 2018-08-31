//
//  PresenterProtcol.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#ifndef PresenterProtcol_h
#define PresenterProtcol_h

//#import <ReactiveObjC.h>
@class RACSignal;
@class RACCommand;
@class RACChannelTerminal;
@protocol AIPresenterProtocol <NSObject>

- (RACSignal*)addFunction;
- (RACSignal*)lessFunction;

/**
 数据到------->UI
 */
- (RACCommand*)setNumberFunction;

- (void)bindChanel;

@property (nonatomic,strong)RACChannelTerminal *textChanel;
@property (nonatomic,strong)RACChannelTerminal *labelChanel;

- (void)setTextChanel:(RACChannelTerminal *)textChanel;
- (RACChannelTerminal *)getTextChanel;
-(void)setLabelChanel:(RACChannelTerminal *)labelChanel;
-(RACChannelTerminal *)getLabelChanel;
@end

#endif /* PresenterProtcol_h */
