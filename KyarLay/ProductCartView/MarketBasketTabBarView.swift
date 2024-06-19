//
//  MarketBasketTabBarView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/8/24.
//

import SwiftUI

struct MarketBasketTabBarView: View {
    @Binding var isAddressViewShowing : Bool
    @Binding var showFeePercent : Bool
    @Binding var isPaymentViewShowing : Bool
    @Binding var showingOrderSummaryView : Bool
    @Binding var isHomeViewShowing : Bool
    @Binding var isEndViewShowing : Bool
    var text : String = ""
    var serviceFeePercentage : String = "0.0"

    var body: some View {
        VStack{
            
            Divider()
            if showFeePercent{
                HStack{
                    Text("Cash On Delivery Service Fee")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    Spacer()
                    Text("\(serviceFeePercentage) %")
                        .font(.system(size: 16))
                        .foregroundColor(.blue)
                }.padding(EdgeInsets(top: 8, leading: 40, bottom: 4, trailing: 40))
            }
            
                 Button(action: {

                    isAddressViewShowing = true
                     isPaymentViewShowing = true
                     showingOrderSummaryView = true
                     isHomeViewShowing = true
                     isEndViewShowing = true
                     
                 }, label: {
                     
                     ZStack{
                         Rectangle()
                             .fill(.yellow)
                             .frame(height: 60)
                             .cornerRadius(50)
                         Text(text) // "ဈေးခြင်းတောင်းထဲထည့်မယ်"
                             .foregroundColor(.black)
                     }
                    
                 })
                 .padding([.top],8)
                 .padding(.horizontal,28)

        }.background(Color.white)
         .frame(height: 50)
    }
}

#Preview {
    MarketBasketTabBarView(isAddressViewShowing: .constant(false), showFeePercent: .constant(false), isPaymentViewShowing: .constant(false), showingOrderSummaryView: .constant(false), isHomeViewShowing: .constant(false), isEndViewShowing: .constant(false))
}
