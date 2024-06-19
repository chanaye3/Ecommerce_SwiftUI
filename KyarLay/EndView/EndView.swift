//
//  EndView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/18/24.
//

import SwiftUI

struct EndView: View {
    @State private var isHomeViewShowing : Bool = false
    var body: some View {
        
            VStack(spacing : 30){
               Image("supriceBag")
                    .resizable()
                    .frame(width: 200,height: 200)
                Text("သင့်အော်ဒါအခြေအနေ")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                Text("မှာပီးပါပီ ကျေးဇူးတင်ပါတယ် အလုက်ရက် ၁ ရက် အတွင်း ပြန်ဆက်သွယ်ပေးပါမယ် ငွေပေးချေမူလုပ်ငန်းစဉ်ပြောင်းလဲလိုပါက Customer Service 09765448852 ကိုဆက်သွယ်ပေးပါ")
                    .foregroundColor(.black)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .lineSpacing(10.0)
                
                Spacer()
                MarketBasketTabBarView(isAddressViewShowing: .constant(false), showFeePercent: .constant(false), isPaymentViewShowing: .constant(false), showingOrderSummaryView: .constant(false), isHomeViewShowing: $isHomeViewShowing, isEndViewShowing: .constant(false) , text: "ဈေးဆက်ဝယ်မယ်")
            }.padding([.horizontal,.top],4)
                .background(Color.white)
                .fullScreenCover(isPresented: $isHomeViewShowing, content: {
                    HomeScreen(stepperValue: .constant(0))
                })
            
        
    }
}

#Preview {
    EndView()
}
