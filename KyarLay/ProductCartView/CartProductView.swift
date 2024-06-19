//
//  CartProductView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/13/24.
//

import SwiftUI

struct CartProductView : View {
    @Binding var stepperValue: Int
    @Binding var basePrice: Int
    @Binding var reducedPrice: Int
    var removeAction : () -> Void
    var body: some View {
        HStack (alignment : .top){
            ZStack{
                Rectangle()
                    .fill(.white)
                    .frame(width : 110,height : 130)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                Image("image 2")
                    .resizable()
                    .frame(width : 110,height : 115)
                
            }
            
            VStack {
                HStack (alignment : .top){
                    VStack(alignment : .leading){
                        Text("ohgiya Japan Cheese Snack with almond (12 Pcs)(1Yr+)")
                            .frame(width: 200, alignment: .leading)
                            .foregroundColor(.gray)
                        Text("\(basePrice * stepperValue) Ks")
                        
                            .foregroundColor(.gray)
                            .padding(.top,4)
                        Text("\(reducedPrice * stepperValue) Ks")
                        
                            .foregroundColor(.gray)
                            .padding(.top,4)
                        
                        
                        
                    }.padding(.leading,8)
                    
                    Spacer()
                    Button {
                        removeAction()

//                        _ = totalPrice
//                        _ = reducedPrice
                    } label: {
                        Image(systemName: "multiply")
                            .resizable()
                            .frame(width : 15, height : 15)
                            .foregroundColor(.gray)
                    }
                }
                
                HStack(spacing : 0.0){
                    
                    Spacer()
                    
                    StepperButton(text: "-",action : {
                        if stepperValue > 1 {
                            stepperValue -= 1
                        }else{
                            removeAction()
//                            stepperValue.remove(at: index)
//                            basePrice.remove(at: index)
                        }
                        //force view Updata
//                        _ = totalPrice
//                        _ = reducedPrice
                    })
                    .foregroundColor(.blue)
                    StepperButton(text: "\(stepperValue)")
                        .foregroundColor(.black)
                    StepperButton(text: "+", action : {
                        stepperValue += 1
//                        _ = totalPrice
//                        _ = reducedPrice
                    })
                    .foregroundColor(.blue)
                }
            }
            
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(10)
        .padding(EdgeInsets(top: 0, leading: 8, bottom: 4, trailing: 8))
    }
}


#Preview {
    CartProductView(stepperValue: .constant(1), basePrice: .constant(1), reducedPrice: .constant(1), removeAction: {})
}
