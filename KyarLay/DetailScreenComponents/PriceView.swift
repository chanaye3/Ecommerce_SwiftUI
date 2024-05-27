//
//  PriceView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/27/24.
//

import Foundation
import SwiftUI

struct PriceView: View {
    var body: some View {
        VStack {
            HStack{
                VStack(alignment: .leading){
                    Text("Baby Tshirt")
                        .foregroundColor(Color(.black))
                        .font(.system(size: 18))
                    Text("အင်ကျီ")
                        .foregroundColor(Color(.gray))
                        .font(.system(size: 16))
                        .padding(4)
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("၄၀၀၀ ကျပ်")
                        .foregroundColor(Color(.black))
                        .font(.system(size: 20))
                    Text(" ̶7̶0̶0̶0̶k̶s̶")
                        .foregroundColor(Color(.gray))
                        .font(.system(size: 20))
                        .padding(4)
                }
            }
            Text("Pre order ဖြစ်ပါတယ် အော်ဒါမှာပီး ၄ ရက်အတွင်း ပို့ပေးပါတယ်")
                .foregroundColor(Color(.red))
                .font(.system(size: 15))
                .padding(.top,8)
            
        }.padding()
    }
}
