//
//  ViewController.m
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import "ViewController.h"
#import "AIPresenterOne.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *less;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onClickLessButton:(id)sender {
    [[self.presentOne lessFunction] subscribeNext:^(NSNumber* x) {
        NSLog(@"%@",x);
    }];
}
- (IBAction)onClickAddButton:(id)sender {
    [[self.presentOne addFunction] subscribeNext:^(NSNumber* x) {
        NSLog(@"%@",x);
    }];
}

- (RACChannelTerminal *)getViewLabelChannel {
    return RACChannelTo(self,label.text);
}

@end
