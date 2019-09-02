//
//  YLWeakselfProxy.m
//  NSTimer
//
//  Created by HouEmba on 2019/9/2.
//  Copyright © 2019 HouEmba. All rights reserved.
//

#import "YLWeakselfProxy.h"

@implementation YLWeakselfProxy

+ (instancetype)proxyWithTarget:(id)target
{
    YLWeakselfProxy *proxy = [YLWeakselfProxy alloc];
    
    proxy.target = target;
    
    return proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation invokeWithTarget:self.target];
}


@end
