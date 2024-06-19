//
//  OrderView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/2/24.
//

import SwiftUI

struct OrderView: View {
    @Binding var stepperValue : Int
    @State private var totalStepperValue = UserDefaults.standard.integer(forKey: "stepperValue")
    @Binding var isMarketBasketViewPresented : Bool

    var onClose: () -> Void
    var body: some View {
       
            ZStack {
                Color.black.opacity(0.5).edgesIgnoringSafeArea(.all) // Transparent background
                ZStack(alignment : .top){
                        
                        Rectangle()
                            
                            .frame(height: 400)
                            .foregroundColor(.white)
                            .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.yellow))
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                            
                            
                            
                        VStack{
                            ZStack(alignment : .center){
                                Circle()
                                    .fill(.white)
                                    .frame(width: 120,height: 120)
                                    .overlay(RoundedRectangle(cornerRadius: 60).stroke(Color.yellow))
                                ZStack(alignment: .topTrailing){
                                    Image(systemName: "cart.fill")
                                        .resizable()
                                        .frame(width: 40,height: 40)
                                        .foregroundColor(.black)
                                        
                                    ZStack{
                                        Circle()
                                            .fill(.blue)
                                            .frame(width: 25,height: 25)
                                        Text("\(UserDefaults.standard.integer(forKey: "stepperValue") + stepperValue - 1)")
                                            .font(.system(size: 14))
                                    }.padding([.trailing,.top],-14)
                                        
                                }
                                
                                    
                                
                            }.offset(y: -60)
                            Text("Similac Gain IQ HMo Step 3 (850 g) (Exp: 3.4.2025) \nကို ဈေးခြင်းတောင်းထဲ ထည့်လိုက်ပါပြီ")
                                .foregroundColor(.black)
                                .font(.system(size: 14))
                                .padding(.top, -20)
                           Spacer()
                            Button(action: {
                                // Handle order placement action
                              isMarketBasketViewPresented = true
                            }, label: {
                                ZStack{
                                    Rectangle().fill(.white)
                                        .frame(height: 70)
                                        .cornerRadius(35)
                                        .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.yellow))
                                    
                                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                                        
                                    Text("အော်ဒါတင်တော့မည်")
                                        .foregroundColor(.black)
                                }
                               
                                    
                                    
                            })
                            Button(action: {
                                // Handle continue shopping action
                                UserDefaults.standard.set(stepperValue, forKey: "stepperValue") // Save stepperValue
                                onClose()
                            }, label: {
                                ZStack{
                                    Rectangle().fill(.yellow)
                                        .frame(height: 70)
                                        .cornerRadius(35)
                                        .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.yellow))
                                    
                                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 24, trailing: 16))
                                        
                                    Text("ဈေးဆက်ဝယ်မယ်")
                                        .foregroundColor(.black)
                                        .padding(.bottom,16)
                                }
                               
                                    
                                    
                            })
                            
                            
                        }.frame(height: 400)
                        .onDisappear {
                                    // Reset stepper value when the view disappears
                                    stepperValue = 1
                                }
                        
                    }
                    
                .padding(8)
            }
            .background(Color.white.opacity(0.3))
           
        
 
    }
        
}

#Preview {
    OrderView(stepperValue: .constant(1), isMarketBasketViewPresented: .constant(false), onClose: {})
}
