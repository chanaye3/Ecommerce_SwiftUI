//
//  PaymentView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/13/24.
//

import SwiftUI

struct PaymentView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showFeePercent : Bool = true
    let gridItems = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())] //// Define two columns
    @State private var selectedIndex : Int? = nil  // track the selecte index
    @State private var showingOrderSummaryView : Bool = false
    @State private var selectedPayment : paymentDetail?  = nil
    
    var body: some View {
        NavigationStack {
            VStack(alignment : .leading){
                TitleOfAdPaOrView(currentSept: .payment)
                Text("Payment Methods")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(8)
                LazyVGrid(columns: gridItems,spacing: 12, content: {
                    ForEach(payment.indices , id: \.self ) { index in
                        PaymentMethodItemView (index: index, selectedIndex: selectedIndex, payment: payment[index], onSelected: {
                            selectedIndex = index
                            selectedPayment = payment[index]
                        })
                    }
                    
                    
                })
                
                
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
                            
                            Text("Payment")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    }
                
                
                MarketBasketTabBarView( isAddressViewShowing: .constant(false), showFeePercent: $showFeePercent, isPaymentViewShowing: .constant(false), showingOrderSummaryView: $showingOrderSummaryView, isHomeViewShowing: .constant(false), isEndViewShowing: .constant(false), text: "ဆက်ရန်")
                    .padding(.bottom)
                
                
                
                
            }
            .fullScreenCover(isPresented: $showingOrderSummaryView, content: {
                OrderSummaryView(selectedPayment: $selectedPayment)
            })
            
            .background(Color.white)
            
        }
    }
}
#Preview {
    PaymentView()
}

