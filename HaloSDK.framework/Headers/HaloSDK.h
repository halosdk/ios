//
//  HaloSDK.h
//  HaloSDK
//
//  Created by 黄国坚 on 2020/8/28.
//  Copyright © 2020 黄国坚. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HaloSDK : NSObject

///授权
/// @param appId 应用id
/// @param urlScheme app内设定的回调地址
/// @param isPopup 是否弹授权窗口
+(void)authorizationWithAppId: (NSString *)appId urlScheme: (NSString *)urlScheme isPopup: (BOOL) isPopup;

///支付
/// @param orderId  订单号
/// @param urlScheme app内设定的回调地址
+(void)payWithOrderId:(NSString *)orderId urlScheme: (NSString *)urlScheme;

@end

NS_ASSUME_NONNULL_END
