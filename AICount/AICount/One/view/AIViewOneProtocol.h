//
//  AIViewOneProtocol.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#ifndef AIViewOneProtocol_h
#define AIViewOneProtocol_h

@class RACCommand;
@class RACChannelTerminal;

@protocol AIViewOneProtocol <NSObject>

- (RACChannelTerminal*)getViewLabelChannel;
@end
#endif /* AIViewOneProtocol_h */
