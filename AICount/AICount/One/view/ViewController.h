//
//  ViewController.h
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AIViewOneProtocol.h"
#import "AIPresenterProtocol.h"

@interface ViewController : UIViewController <AIViewOneProtocol>

@property (nonatomic,strong)id<AIPresenterProtocol> presentOne;
@end

