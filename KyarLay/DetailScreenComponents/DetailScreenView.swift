//
//  DetailScreenView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/24/24.
//

import SwiftUI

struct DetailScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isMarketBasketViewPresent = false
    @Binding var isDetailViewPresented: Bool
    @State var index = 0
    @State private var isNestedDetailViewPresented = false
    @Binding var stepperValue : Int
    @State private var showOrderView = false
    @State private var isMarketBasketView = false
    @State private var isMarketBasketViewPresented = false
    var body: some View {
        NavigationStack{
            VStack {
                VStack {
                    ScrollView(.vertical,showsIndicators: false){
                        
                        
                        
                        CategoriesDetailview()
                        PromotionAccessoriesView()
                        ProductDetailView()
                        ToSeeOtherProductView ()
                        AllProductView(isNestedDetailViewPresented: $isNestedDetailViewPresented, stepperValue: $stepperValue , showOrderView: $showOrderView)
                        
                        
                    }
                    
                    .background(Color.backgroundColour)
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
                            
                            Image("logoImage") // Replace with your image
                                .resizable()
                                .frame(width: 80, height: 50)
                            
                            
                        }
                        
                        
                    }
                    
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
                    .background(Color.white)
                    Detailtabbar(isMarketBasketViewPresent: $isMarketBasketViewPresented , text: "ဈေးခြင်းတောင်းထဲထည့်မယ်")
                    
                    
                } .background(Color.white)
                
                
                
            }
            .background(Color.backgroundColour)
            
            .fullScreenCover(isPresented: $isNestedDetailViewPresented) {
                DetailScreenView(isDetailViewPresented: $isNestedDetailViewPresented, stepperValue: $stepperValue)
                    .edgesIgnoringSafeArea(.all)
            }
            .fullScreenCover(isPresented: $isMarketBasketViewPresented) {
                MarketBasketView()
                    
            }
            .overlay(
                Group {
                    if showOrderView {
                        OrderView(stepperValue: $stepperValue, isMarketBasketViewPresented: $isMarketBasketViewPresented) {
                            showOrderView = false
                        }
                        .padding()
                        .transition(.opacity)
                        .animation(.easeInOut)
                       
                        
                        .frame(height : UIScreen.main.bounds.height)
                        
                    }
                }
            )
        }
    }
}



#Preview {
    DetailScreenView( isDetailViewPresented: .constant(false), stepperValue: .constant(1) )
}

















