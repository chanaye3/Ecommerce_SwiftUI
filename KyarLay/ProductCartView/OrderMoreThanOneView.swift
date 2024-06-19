//
//  OrderMoreThanOneView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI


struct OrderMoreThanOneView: View {
    var body: some View {
        ZStack(alignment: .center){
            Rectangle()
                .frame(height: 70)
                .foregroundColor(.blue)
                .cornerRadius(6)
            
            
            Text("အော်ဒါတစ်ခုလျှင် ပစ္စည်းအမျိုးစား တစ်ခုထက်ပို တင်နိုင်ပါသည်")
                .fontWeight(.regular)
                .font(.system(size: 14))
            
        }.padding(.top,16)
            .padding(.bottom,8)
    }
}


#Preview {
    OrderMoreThanOneView()
}
