//
//  MarketBasketView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/7/24.
//

import SwiftUI

struct MarketBasketView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var stepperValue : [Int] = [1, 1, 1]
    @State private var basePrice : [Int] = [6000, 8000, 12000]  // Base price of the item
    @State private var valueToggle : Bool = false
    @State private var Reducedprice : [Int] = [200,100,10]
    @State private var isAddressViewShowing = false
    // Computed property to calculate total price
    var totalPrice : Int {
        var sum = 0
        for (index,value) in stepperValue.enumerated(){
            sum += value * basePrice[index]
        }
        print("Total Price Calculated: \(sum)")
        return sum
    }
    
    var reducedPrice : Int{
        var sum = 0
        for (index, value ) in stepperValue.enumerated(){
            sum += value * Reducedprice[index]
        }
        return sum
    }
    
    // Function to handle the removal of an item
    func removeItem(at index: Int) {
        guard index < stepperValue.count else { return }
        stepperValue.remove(at: index)
        basePrice.remove(at: index)
        Reducedprice.remove(at: index)
    }
    
    var body: some View {
        
        
        NavigationStack {
            VStack{
                ScrollView{
                    VStack(alignment: .center){
                        OrderMoreThanOneView()
                        
                        
                        ForEach(stepperValue.indices,id : \.self){ index in
                            CartProductView (stepperValue: $stepperValue[index], basePrice: $basePrice[index], reducedPrice: $Reducedprice[index], removeAction: {removeItem(at: index)})
                        }
                        
                        AddMoreProductView ()
                        
                        VStack{
                            ValueView(name: "ပစ္စည်း လျော့ဈေး", price:  reducedPrice)
                            ValueView(name: "ကျားလေး အဖွဲ့ဝင် လျော့ဈေး", price:  0)
                            ValueView(name: "Flash Sale လျော့ဈေး", price:  0)
                            ValueView(name: "သုံးထားသော Points", price:  0,image : "ratePhoto" )
                            Divider()
                                .padding(.vertical,8)
                            ValueView(name: "စုစုပေါင်း", price:  totalPrice)
                           
                                
                            
                                Toggle(isOn: $valueToggle) {
                                    HStack{
                                        Image("ratePhoto")
                                            .resizable()
                                            .frame(width: 30,height: 30)
                                        Text("Points အသုံးပြုမည်")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 14))
                                    }
                                    
                                }
                                .padding(8)
                                .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray))
                            
                            
                        }.padding()
                            .background(Color.white)
                            .cornerRadius(25)
                            
                        
                    }
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
                        
                        Text("ဈေးခြင်းတောင်း")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                    }
                }
                .padding(.top,8)
                
                .background(Color.white)
                MarketBasketTabBarView(isAddressViewShowing : $isAddressViewShowing , showFeePercent: .constant(false) , isPaymentViewShowing: .constant(false), showingOrderSummaryView: .constant(false), isHomeViewShowing: .constant(false), isEndViewShowing: .constant(false) ,text: "အော်ဒါတင်တော့မည်")
            }
            .fullScreenCover(isPresented: $isAddressViewShowing,
                             content: {
                AdressView()
            })
            
            .background(Color.white)
            
        }
    }
}

#Preview {
    MarketBasketView()
}










