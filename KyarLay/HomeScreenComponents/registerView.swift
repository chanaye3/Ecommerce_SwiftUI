//
//  registerView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/19/24.
//

import Foundation
import SwiftUI
struct registerView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.registercolour)
            
                .frame(height: 100)
                .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.borderColour))
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("ကျားလေး အထူးအခွင့်အရေး")
                        
                            .fontWeight(.bold)
                            .font(.system(size: 16))
                        Image("popper")
                            .resizable()
                            .frame(width: 40,height: 40)
                        
                        
                    }
                    Text("ကျားလေး မှာ ဈေးဝယ်ရင်း ပွိုင့် နှင့် အခြား \nအခွင့်အရေးများကို ရယူလိုက်ပါ")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    
                }
                ZStack{
                    Rectangle()
                        .fill(.registerBackguoundColour)
                        .frame(width: 130,height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.borderColour))
                    Text("Register now")
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                }
                .padding(2)
                
                
            }.padding(2)
        }.padding(.top,8)
    }
}
