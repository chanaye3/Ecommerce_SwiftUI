//
//  AddAddressView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI

struct AddAddressView: View {
    var body: some View {
        HStack{
            Text("လိပ်စာ ထည့်ရန် / ပြင်ရန်")
                .font(.system(size: 14))
                .foregroundColor(.gray)
            Spacer()
            
            Image(systemName: "plus.circle")
                .resizable()
                .frame(width: 25, height: 25, alignment: .center)
                .foregroundColor(.blue)
                .onTapGesture {
                    
                }
            
        }.padding(12)
            .background(Color.white)
            .cornerRadius(10)
            .padding(12)
    }
}


#Preview {
    AddAddressView()
}
