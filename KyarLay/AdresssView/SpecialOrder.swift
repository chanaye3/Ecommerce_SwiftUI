//
//  SpecialOrder.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI


struct SpecialOrder: View {
    @State var isTextFieldValue : String = ""
    var body: some View {
        VStack(alignment : .leading){
            ImageAndTextView(image: "paperPlane",text: "အထူးမှာကြားချက်")
            
            TextField("", text: $isTextFieldValue, axis: .vertical)
                .font(.system(size: 14))
                .foregroundColor(.black)
                .padding()
                .frame (width : UIScreen.main.bounds.width - 52)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                .padding(8)
            
            
            
        }.padding()
            .background(Color.white)
    }
}

#Preview {
    SpecialOrder()
}
