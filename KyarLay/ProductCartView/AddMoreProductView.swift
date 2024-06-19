//
//  AddMoreProductView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI

struct AddMoreProductView : View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        HStack{
            Text("ပစ္စည်းအထပ်ထပ်ထည့်ရန်")
                .foregroundColor(.gray)
            Spacer()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 30, height: 30)
            }
            
            
        }.padding(16)
            .background(Color.white)
            .cornerRadius(10)
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 4, trailing: 8))
    }
}


#Preview {
    AddMoreProductView()
}
