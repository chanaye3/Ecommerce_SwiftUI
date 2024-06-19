//
//  MiniPaymentView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/17/24.
//

import SwiftUI

struct MiniPaymentView: View {
    var payment : paymentDetail
    var body: some View {
        VStack(alignment : .leading){
            HStack{
                Text("Payment")
                    .foregroundColor(.black)
                    .font(.system(.subheadline))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Spacer()
            }
            HStack{
                Image(payment.image)
                    .resizable()
                    .frame(width: 100,height: 100)
                Spacer()
                Text(payment.imageName)
                    .foregroundColor(.red)
                    .font(.system(size: 16))
                Spacer()
                Text("\(payment.serivceFee) %")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                Image(systemName: "checkmark")
                    .resizable()
                    .frame(width : 12, height: 12)
                    .background(
                        Circle()
                            .stroke(Color.green)
                            .background(Circle().foregroundColor(.green))
                            .frame(width: 30, height: 30)
                    )
                    .padding(.leading)
            }
            
        }.padding()
            .background(Color.white)
            .cornerRadius(10)
            .padding([.leading,.trailing,.bottom])
    }
}

#Preview {
    MiniPaymentView(payment: paymentDetail(id: UUID(), image: "", imageName: "", serivceFee: ""))
}
