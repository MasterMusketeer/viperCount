//
//  PresenterProtcol.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

@class RACSignal;
@class RACChannelTerminal;
@protocol AIPresenterProtocol <NSObject>

- (RACSignal*)addFunction;
- (RACSignal*)lessFunction;

- (void)bindChanel;

//添加属性
@property (nonatomic,strong)RACChannelTerminal *textChanel;
@property (nonatomic,strong)RACChannelTerminal *labelChanel;

- (void)setTextChanel:(RACChannelTerminal *)textChanel;
- (RACChannelTerminal *)getTextChanel;
-(void)setLabelChanel:(RACChannelTerminal *)labelChanel;
-(RACChannelTerminal *)getLabelChanel;
@end
