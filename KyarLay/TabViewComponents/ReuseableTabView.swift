//
//  ReuseableTabView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/23/24.
//

import Foundation
import SwiftUI

struct tabbar: View {
    @Binding var index: Int
    let buttonIndex: Int
    let systemImage: String
    let title: String
    var isCircle: Bool = false
    
    var body: some View {
        Button(action: {
            self.index = buttonIndex
        }) {
            VStack {
                if isCircle {
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 70, height: 70)
                        Image(systemName: systemImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color(.systemYellow))
                    }
                    .offset(y: -25)
                } else {
                    Image(systemName: systemImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(self.index == buttonIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                    Text(title)
                        .font(.system(size: 14))
                        .foregroundColor(self.index == buttonIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                }
            }
        }
    }
}

struct ResuableTabItem : View {
    @Binding var index : Int
    let bottomIndex : Int
    let systemImage : String
    let imageWidth : CGFloat
    let imageHeight : CGFloat
    let imageName : String
    var isCircle : Bool = false
    var body: some View{
        Button(action: {
            self.index = bottomIndex
        }, label: {
            if isCircle{
                ZStack{
                    Circle()
                        .fill(.white)
                        .frame(width: 70,height: 70)
                        
                    Image(systemName: systemImage)
                        .resizable()
                        .font(.title)
                        .frame(width: imageWidth,height: imageHeight)
                        .foregroundColor(Color(.systemYellow))
                        
                }
                .offset(y : -25)
            }else{
                VStack {
                    Image(systemName: systemImage)
                        .resizable()
                        .frame(width: imageWidth ,height: imageHeight )
                    .foregroundColor(self.index == bottomIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                    Text(imageName)
                        .font(.system(size: 14))
                        .foregroundColor(self.index == bottomIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                }
            }
            
        })
    }
}


struct Detailtabbar : View {
    @State private var showQuantityView = false
    @State private var stepperValue = 1
    @State private var buttonClicks = 0
    @State private var showOrderView = false
    @State private var showAlert = false
    @Binding var isMarketBasketViewPresent : Bool
    var text : String
   
    var body: some View {
        VStack(alignment : .center){
            if showQuantityView && buttonClicks == 1 {
                VStack{
                    QuantityView(stepperValue: $stepperValue, showQuantityView: $showQuantityView)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(radius: 10)
                        .padding(.horizontal, 8)
                        .transition(.move(edge: .bottom))
                        .animation(.easeInOut)
                }
                .edgesIgnoringSafeArea(.all)
                            
                        }

            VStack{
                
                Divider()
                     Button(action: {
  
                         if buttonClicks == 1 {
                             showQuantityView = false
                             showOrderView = true
                             
                             
                         } else {
                            
                             showQuantityView = true
                             buttonClicks = 1
                         }
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
            
             .overlay(
                         Group {
                             if showOrderView {
                                 OrderView(stepperValue: $stepperValue, isMarketBasketViewPresented: $isMarketBasketViewPresent) {
                                     showOrderView = false
                                 }
                                 .transition(.opacity)
                                 .animation(.easeInOut)
                                 .offset(y : -350)
                                 
                                 .frame(height : UIScreen.main.bounds.height)
                            
                             }
                         }
             )
        }

        
        
        
    }
}
#Preview {
    Detailtabbar(isMarketBasketViewPresent: .constant(false), text: "")
}
