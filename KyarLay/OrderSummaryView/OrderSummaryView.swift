//
//  OrderSummaryView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/17/24.
//

import SwiftUI

struct OrderSummaryView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedPayment : paymentDetail?
    @State var isEndViewShowing : Bool = false
    var body: some View {
        NavigationStack {
            VStack(alignment : .leading){
                TitleOfAdPaOrView(currentSept: .orderSummary)
                    .padding(.bottom,-16)
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        KyarLayView (payment: paymentDetail(id: UUID(), image: "", imageName: "", serivceFee: ""))
                       
                        DeliveryView ()
                        MiniPaymentView(payment: selectedPayment ?? paymentDetail(id: UUID(), image: "dollar", imageName: "Dollar", serivceFee: "7"))
                        
                        
                            
                             
                    }
                }.background(Color.backgroundColour)
                
               
                
                
                Spacer()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarBackButtonHidden(true)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                HStack{
                                    Image(systemName: "chevron.left")
                                    
                                        .resizable()
                                        .frame(width: 10, height: 20)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        ToolbarItem(placement: .principal) {
                            
                            Text("Order Summary")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    }
                
                
                MarketBasketTabBarView(isAddressViewShowing: .constant(false), showFeePercent: .constant(false), isPaymentViewShowing: .constant(false), showingOrderSummaryView: .constant(false), isHomeViewShowing: .constant(false), isEndViewShowing: $isEndViewShowing, text: "အော်ဒါတင်တော့မည်")
                    .padding(.bottom)
                
                
                
                
            }
            .fullScreenCover(isPresented: $isEndViewShowing , content: {
                EndView()
            })
            
            .background(Color.white)
            
        }
    }
}

#Preview {
    @State var selectedPayment: paymentDetail? = paymentDetail(id: UUID(), image: "dollar", imageName: "Dollar", serivceFee: "7")

        return OrderSummaryView(selectedPayment: $selectedPayment)
}



