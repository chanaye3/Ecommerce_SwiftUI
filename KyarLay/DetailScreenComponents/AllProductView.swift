//
//  AllProductView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/29/24.
//

import SwiftUI

struct AllProductView : View {
    @Binding var isNestedDetailViewPresented : Bool
    @Binding var stepperValue : Int
    @Binding var showOrderView: Bool // Pass the showOrderView binding
    
   
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Related Product")
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 32, trailing: 16))
                .background(Color.yellow)
                .cornerRadius(6)
                .padding(.leading,8)
            
            
            VStack{
                ForEach( related , id : \.self) { id in
                    Button(action: {
                        isNestedDetailViewPresented = true
                        
                    }, label: {
                        ProductView(
                            showOrderView: $showOrderView,
                            stepperValue: $stepperValue,
                            image: "\(id.image)" ,
                            imageName: "\(id.imageName)",
                            step: "\(id.step)",
                            price: "\(id.price)"
                        )
                    })
                    
                    
                }
                
            }.background(Color.realtedBackground)
                .padding(.top, -28)
        }
    }
}

#Preview {
    AllProductView(isNestedDetailViewPresented: .constant(false), stepperValue: .constant(1), showOrderView: .constant(false)) //isDetailViewPresented: .constant(false)
}
