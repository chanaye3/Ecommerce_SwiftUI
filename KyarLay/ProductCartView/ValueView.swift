//
//  ValueView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI

struct ValueView: View {
    var name : String = ""
    var price : Int = 0
    var image : String = ""
    var priceColor: Color = .red
    var kyatColor : Color = .gray
    
    var body: some View {
        HStack{
            Text(name)
                .font(.system(size: 14))
                .foregroundColor(Color("valueColor"))
            Image(image)
                .resizable()
                .frame(width: 30,height: 30)
            
            Spacer()
            Text("\(price)")
                .foregroundColor(priceColor)
                .font(.system(size: 16))
            Text("ကျပ်")
                .foregroundColor(kyatColor)
                .font(.system(size: 12))
            
        }
    }
}

#Preview {
    ValueView()
}
