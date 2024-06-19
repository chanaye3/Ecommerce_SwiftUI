//
//  shopAndAccessoriesView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/19/24.
//

import Foundation
import SwiftUI

struct shopAndAccessoriesView: View {
    var body: some View {
        HStack{
            ZStack{
                Rectangle()
                    .fill(.white)
                    .frame(height: 80)
                    .cornerRadius(10)
                HStack{
                    Text("ကျားလေး \nမိတ်ဖက်ဆိုင်များ")
                        .foregroundColor(.black)
                        .font(.system(size: 12))
                        .lineSpacing(10.0)
                    Spacer()
                    Image("shoppingStore")
                        .resizable()
                        .frame(width: 60,height: 60)
                    
                }.padding(8)
            }
            ZStack{
                Rectangle()
                    .fill(.white)
                    .frame(height: 80)
                    .cornerRadius(10)
                HStack{
                    Text("ရောင်းအားကောင်း \nသောပစ္စည်းများ")
                        .foregroundColor(.black)
                        .font(.system(size: 12))
                        .lineSpacing(10.0)
                    Spacer()
                    Image("shoppingCart")
                        .resizable()
                        .frame(width: 60,height: 60)
                    
                }.padding(8)
            }
            
        }.padding(8)
    }
}
