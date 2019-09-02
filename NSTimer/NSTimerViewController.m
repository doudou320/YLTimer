//
//  NSTimerViewController.m
//  NSTimer
//
//  Created by HouEmba on 2019/9/2.
//  Copyright © 2019 HouEmba. All rights reserved.
//

#import "NSTimerViewController.h"
#import "YLWeakselfProxy.h"

@interface NSTimerViewController ()

@property (nonatomic, weak) NSTimer *timer;

@end

@implementation NSTimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"NSTimerViewController";
    
    self.view.backgroundColor = [UIColor redColor];
    
    //方法一 (中间代理对象)
    /*
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[YLWeakselfProxy proxyWithTarget:self] selector:@selector(runTimer) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    self.timer = timer;
     */
    
    __weak typeof(self) weakSelf = self;
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        [weakSelf runTimer];
    }];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    self.timer = timer;

}

- (void)runTimer
{
    NSLog(@"=======%s",__func__);
}


- (void)dealloc
{
    [self.timer invalidate];
    
    NSLog(@"=======%s",__func__);
}
@end
