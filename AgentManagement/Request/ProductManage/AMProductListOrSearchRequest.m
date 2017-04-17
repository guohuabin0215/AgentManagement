//
//  AMProductListOrSearchRequest.m
//  AgentManagement
//
//  Created by huabin on 16/9/6.
//  Copyright © 2016年 KK. All rights reserved.
//

#import "AMProductListOrSearchRequest.h"
#import "AMProductInfo.h"
@implementation AMProductListOrSearchRequest

- (instancetype)initWithPage:(NSString *)page Size:(NSString*)size Search:(NSDictionary*)search
{
    self = [super init];
    if (self) {
      
        [self.requestParameters  safeSetObject:search forKey:@"search"];
        [self.requestParameters safeSetObject:page forKey:@"page"];
        [self.requestParameters safeSetObject:size forKey:@"size"];

    }
    return self;
}

- (NSString *)urlPath
{
    return @"apiproduct/search";
}

- (id)buildModelWithJsonDictionary:(NSDictionary *)dictionary
{

    return [[AMProductInfo alloc]initWithDictionary:dictionary error:nil];

}


@end
