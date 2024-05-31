//
//  PromotionAccessoriesView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/28/24.
//

import Foundation
import SwiftUI


struct PromotionAccessoriesView: View {
   
    
    var body: some View {
        VStack(alignment: .leading){
            Text("ပရိုမိုးရှင်းများ")
                .font(.system(size: 18))
                .foregroundColor(.gray)
                .padding(8)
            AccessoriesDetilView(detail: "ဒီပစ္စည်းအတွက် ကျားလေးပွိုင့်ကို အသုံးပြုလို့မရနိုင်ပါ")
            AccessoriesDetilView(detail: "ဒီအစ္စည်းအတွက် ကျားလေးအဖွဲ့ဝင် လျော့ဈေးကိုအသုံးပြုလို့မရနိုင်ပါ")
                .padding(.top)
            
            
        }
    }
}




struct AccessoriesDetilView : View {
    var detail : String
    var body: some View {

        HStack(alignment : .top){
            Rectangle()
                .fill(Color(.red))
                .frame(width: 8,height: 8)
                .padding(.top,6)
            
            Text(detail)   ///"ဒီပစ္စည်းအတွက် ကျားလေးပွိုင့်ကို အသုံးပြုလို့\nမရနိုင်ပါ"
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .lineSpacing(8)
            
        }.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(Color.white)
            .cornerRadius(6)
        
    }
}


#Preview{
    AccessoriesDetilView(detail: "ဒီပစ္စည်းအတွက် ကျားလေးပွိုင့်ကို အသုံးပြုလို့\nမရနိုင်ပါ")
}
