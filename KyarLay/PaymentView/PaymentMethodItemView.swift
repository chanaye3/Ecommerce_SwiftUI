//
//  PaymentMethodItemView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/17/24.
//

import SwiftUI

struct PaymentMethodItemView : View {
    let index : Int
    let selectedIndex : Int?
    let payment : paymentDetail
    let onSelected : () -> Void
    var body: some View {
        VStack(alignment : .center,spacing: 12){
            
            ZStack{
                Image("\(payment.image)")
                    .resizable()
                    .frame(width: 96,height: 96)
                    .cornerRadius(50)
                    .background(
                        Circle()
                            .stroke(selectedIndex == index ? Color.blue : Color.gray  ,lineWidth : 4)
                            .opacity(selectedIndex == index ? 1 : 0.2)
                            .frame(width: 100,height: 100)
                    )
                    .padding()
                if selectedIndex == index {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 24, height: 24)
                        .overlay {
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight : .bold))
                        }
                        .offset(x: 36, y: -40)
                }
            }
            
            
            Text("\(payment.imageName)")
                .foregroundColor(selectedIndex == index ? .blue : .gray)
                .frame(width: 100,height: 50,alignment: .center)
                .multilineTextAlignment(.center)
                .lineSpacing(8.0)
            Text("\(payment.serivceFee) %")
                .font(.system(size: 24))
                .foregroundColor(selectedIndex == index ? .blue : .gray)
                .frame(width: 100,alignment: .center)
                .multilineTextAlignment(.center)
                .lineSpacing(14.0)
            
            
        }
            .onTapGesture {
               onSelected()
            }
    }
}


#Preview {
    PaymentMethodItemView(index: 0, selectedIndex: 0, payment: paymentDetail(id: UUID(), image: "", imageName: "", serivceFee: ""), onSelected: {})
}
