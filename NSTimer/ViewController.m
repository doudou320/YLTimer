//
//  ViewController.m
//  NSTimer
//
//  Created by HouEmba on 2019/9/2.
//  Copyright © 2019 HouEmba. All rights reserved.
//

#import "ViewController.h"
#import "NSTimerViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"rootViewController";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn addTarget:self action:@selector(onButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)onButtonAction
{
    [self.navigationController pushViewController:[[NSTimerViewController alloc] init] animated:YES];
}

@end
