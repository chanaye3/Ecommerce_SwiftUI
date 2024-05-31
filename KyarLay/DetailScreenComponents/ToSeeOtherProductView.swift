//
//  ToSeeOtherProductView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/28/24.
//

import Foundation
import SwiftUI

struct ToSeeOtherProductView : View {
    var body: some View {
        ZStack{
            Color(Color.white)
                .frame(height: 80)
            Button {
                
            } label: {
                HStack{
                    Text("Soft မှ အခြားပစ္စည်းများ ကြည့်ရန်")
                        .foregroundColor(Color.blue)
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.blue)
                }.padding(.bottom,4)
            }
            
            
            
            
        }
        .cornerRadius(6)
        .padding(8)
    }
}

