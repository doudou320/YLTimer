//
//  YLWeakselfProxy.h
//  NSTimer
//
//  Created by HouEmba on 2019/9/2.
//  Copyright © 2019 HouEmba. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YLWeakselfProxy : NSProxy

@property (nonatomic, weak) id target;

+ (instancetype)proxyWithTarget:(id)target;

@end


