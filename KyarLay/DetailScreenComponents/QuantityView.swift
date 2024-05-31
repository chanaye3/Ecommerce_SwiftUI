//
//  QuantityView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/30/24.
//

import Foundation
import SwiftUI

struct QuantityView : View {
    @State var StepperValue : Int = 0
    var body: some View {
        
        VStack{
            HStack(alignment: .top){
                Image("image1")
                    .resizable()
                    .frame(width: 150,height: 150)
                    .aspectRatio(contentMode: .fill)
                    .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray))
                VStack{
                    Text("Physiolac Relay Step 1 (400g) (23.6.2024")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    Text("Step (1)")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        }
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "multiply")
                        .resizable()
                        .fontWeight(.bold)
                        .frame(width: 15,height: 15)
                        .foregroundColor(.black)
                })
               
            }
            Divider()
                .padding(.vertical)

            Stepper(
                            onIncrement: {
                                self.StepperValue += 1
                            },
                            onDecrement: {
                                self.StepperValue -= 1
                            },
                            label: {
                                Text("Value: \(StepperValue)")
                            }
                        ).foregroundColor(.black)
            
        }.padding()
        .background(.white)
    }
}
#Preview {
    QuantityView()
}
 
