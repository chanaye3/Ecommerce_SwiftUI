//
//  KyarLayView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/17/24.
//

import SwiftUI

struct KyarLayView : View {
    // Default values
    let itemValue  : Int = 7000
    let discountValue : Int = 0
    let flashSaleDiscount : Int = 0
    let memberDiscount : Int = 0
    let pointsUsed : Int = 0
    let deliveryFee : Int = 300
    
    let payment : paymentDetail
    // Calculated service fee percentage
//    var serviceFeePercentage : Double{
//        return Double(payment.serivceFee) ?? 1.0
//    }
    var serviceFeePercentage : Double {
        guard let fee  = Double(payment.serivceFee) else {
            return 0.0
        }
        return fee
    }
    
    //Calculate service fee based on percentage
    var serviceFee : Int {
        return Int(Double(itemValue) * serviceFeePercentage / 100.0)
    }
    //TotalValueCalculation
    var totalValue : Int {
        itemValue + discountValue + flashSaleDiscount + memberDiscount + pointsUsed + deliveryFee + serviceFee
    }
    
    var body: some View {
        VStack {
            VStack(alignment : .center){
                HStack{
                    Spacer()
                    Image("logoImage")
                        .resizable()
                        .frame(width: 100,height: 50)
                        .padding(12)
                    
                    Spacer()
                }
                Divider()
                HStack{
                    Spacer()
                    Text("\(totalValue) Ks")
                        .foregroundColor(.black)
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .padding(12)
                    
                    Spacer()
                }
                DottedDivider()
                
                ValueView(name: "ပစ္စည်းတန်ဖိုး  စုစုပေါင်း", price: itemValue, priceColor: .gray)
                    .padding()
                ValueView(name: "ပစ္စည်း လျော့ဈေး", price: discountValue)
                    .padding()
                ValueView(name: "ကျားလေး Flash Sale လျော့ဈေး", price: flashSaleDiscount)
                    .padding()
                ValueView(name: "ကျားလေး အဖွဲ့ဝင် လျော့ဈေး", price: memberDiscount)
                    .padding()
                ValueView(name: "သင်သုံးထားသော ပွိုင့်", price: pointsUsed , image: "ratePhoto")
                    .padding()
                ValueView(name: "ပို့ဆောင်ခ", price: deliveryFee,priceColor: .gray)
                    .padding()
                ValueView(name: "အိမ်အရောက် ငွေချေစနစ်\nService Fee", price: serviceFee , priceColor: .blue, kyatColor : .blue)
                    .padding()
                    .padding(.bottom)
                
            }.background(Color.white)
                .padding(.top,4)
            ValueView(name: "ပစ္စည်းတန်ဖိုး  စုစုပေါင်း", price: totalValue,priceColor: .black)
                .padding()
                .background(Color.white)
        }.background(Color.backgroundColour)
    }
}


#Preview {
    KyarLayView(payment: paymentDetail(id: UUID(), image: "", imageName: "", serivceFee: ""))
}
