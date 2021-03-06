//
//  UCBankcardListViewModel.h
//  EachChild
//
//  Created by 虞军军 on 16/12/22.
//  Copyright © 2016年 erongchuang. All rights reserved.
//

#import "BaseRequestViewModel.h"

@interface UCBankcardListViewModel : BaseRequestViewModel

@property (nonatomic, strong) NSMutableArray *dataArray;

- (void)requestForBankcardListWithCompeltion:(void(^)(NSInteger status))completion;
- (void)requestForDeletingBankcard:(NSDictionary *)params withithCompletion:(void(^)(NSInteger status))completion;

@end
