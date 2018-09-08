//
//  AITwoViewController.m
//  AICount
//
//  Created by aizexin on 2018/8/25.
//  Copyright © 2018年 master. All rights reserved.
//

#import "AITwoViewController.h"

@interface AITwoViewController ()
@property (weak, nonatomic) IBOutlet UIButton *dismissButton;

@end

@implementation AITwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    //MARK:AI test1
}
- (IBAction)onClickDismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)onClickchange:(id)sender {
    [UIView animateWithDuration:2 animations:^{
        self.dismissButton.backgroundColor = [UIColor greenColor];
    } completion:^(BOOL finished) {
        self.dismissButton.backgroundColor = [UIColor whiteColor];
    }];
}
- (void)dealloc {
    NSLog(@"AITwoViewController----dealloc");
}
@end
