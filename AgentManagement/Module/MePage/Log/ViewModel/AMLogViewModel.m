//
//  AMLogViewModel.m
//  AgentManagement
//
//  Created by Kyle on 2016/10/19.
//  Copyright © 2016年 KK. All rights reserved.
//

#import "AMLogViewModel.h"

@interface AMLogViewModel ()

@end

@implementation AMLogViewModel

- (RACSignal *)refreshLogSignal {
    RACSignal *signal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        return [RACDisposable disposableWithBlock:^{
        }];
    }];
    
    return [signal takeUntil:self.rac_willDeallocSignal];
}

- (RACSignal *)loadMoreLogSignal {
    RACSignal *signal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        return [RACDisposable disposableWithBlock:^{
        }];
    }];
    
    return [signal takeUntil:self.rac_willDeallocSignal];
}

@end
