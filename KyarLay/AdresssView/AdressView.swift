//
//  AdressView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/11/24.
//

import SwiftUI

struct AdressView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var isPaymentViewShowing : Bool = false
    
    var body: some View {
        
        
        NavigationStack {
            VStack{
                TitleOfAdPaOrView(currentSept: .address)
                AddAddressView()
                AddressAndDeliFeeView()
                SpecialOrder()
                
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
                            
                            Text("Address")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    }
                
                
                
                MarketBasketTabBarView( isAddressViewShowing: .constant(false), showFeePercent: .constant(false), isPaymentViewShowing: $isPaymentViewShowing, showingOrderSummaryView: .constant(false), isHomeViewShowing: .constant(false), isEndViewShowing: .constant(false), text: "ဆက်ရန်")
                
            }
            .fullScreenCover(isPresented: $isPaymentViewShowing, content: {
                PaymentView()
            })
            
            .background(Color.backgroundColour)
            
        }
    }
}

#Preview {
    AdressView()
}





