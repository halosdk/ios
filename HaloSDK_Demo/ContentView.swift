//
//  ContentView.swift
//  HaloSDK_Demo
//
//  Created by 黄国坚 on 2020/8/26.
//  Copyright © 2020 黄国坚. All rights reserved.
//

import SwiftUI
import HaloSDK

struct ContentView: View {
    
    @State var appId: String = ""
    @State var orderId: String = ""
    
    
    var body: some View {
        VStack{
            Spacer()
            VStack(alignment: .center, spacing: 10, content: {
                
                TextField("输入授权AppId", text: $appId)
                    .font(.largeTitle)
                    .fixedSize()
                Button(action: {
                    print(self.appId)
                    HaloSDK.authorization(withAppId: self.appId, urlScheme: "halo.com.sdk.demo", isPopup: true)
                }, label: {
                    Text("授权")
                })
            })
            Spacer()
            VStack(alignment: .center, spacing: 10, content: {
                TextField("输入支付OrderId", text: $orderId)
                    .font(.largeTitle)
                    .fixedSize()
                Button(action: {
                    HaloSDK.pay(withOrderId: self.orderId, urlScheme: "halo.com.sdk.demo")
                }, label: {
                    Text("支付")
                })
            })
            Spacer().disabled(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//// 更通用的做法
//extension UIApplication {
//    func endEditing() {
//        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//    }
//}
