//
//  AddressAndDeliFeeView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI

struct AddressAndDeliFeeView: View {
    @State var isDeliFeeViewShowing  = false
    var body: some View {
        VStack(spacing : 20){
            HStack{
                ImageAndTextView (image: "map", text: "Address")
                
                Spacer()
                Button {
                    isDeliFeeViewShowing = true
                } label: {
                    Text("ပို့ဆောင်ခများကြည့်ရန်")
                        .foregroundColor(.blue)
                        .font(.system(size: 14))
                        .background(
                            VStack {
                                Spacer()
                                Rectangle()
                                    .frame(height: 1) // Thickness of the underline
                                    .offset(y: 5) // Spacing between text and underline
                            }
                                .foregroundColor(.blue)
                        )
                    
                }.sheet(isPresented : $isDeliFeeViewShowing) {
                    DeliFeeView()
                }
                
                
            }
            HStack{
                Text("testing : ကျောက်တံတား")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "checkmark")
                    .resizable()
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(4)
                
                    .background(Color.blue)
                    .frame(width : 20, height : 20)
                    .cornerRadius(4)
            }.padding(12)
        }
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 16, trailing: 16))
        .background(Color.white)
    }
}


#Preview {
    AddressAndDeliFeeView()
}
