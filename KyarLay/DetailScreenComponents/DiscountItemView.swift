//
//  DiscountItemView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/28/24.
//

import SwiftUI

struct DiscountItemView: View {
    var body: some View {
        VStack{
            Text("ဒီပစ္စည်းအတွက် သင်ယူနိုင်သော လျော့ဈေးများ")
                .foregroundColor(.gray)
                .font(.system(size: 14))
            Divider()
                .frame(height: 16)
                .foregroundColor(.gray)
            Text("- ဒီပစ္စည်းရဲ့ (၁၀၀) % ကို ကျားလေး ပွိုင့်ကို အသုံးပြုပီး ပေးချေနိုင်ပါသည်")
                .foregroundColor(.gray)
                .font(.system(size: 14))
                .padding(16)
            Spacer()
        }
        
        .padding(.vertical,32)
        
        .background(Color.white)
        .presentationDetents([.fraction(0.3)])
            
        
       
    }
}

#Preview {
    DiscountItemView()
}
