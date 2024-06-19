//
//  TitleOfAdPaOrView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI

enum CheckOutSetup {
case address
    case payment
    case orderSummary
}

struct NumberAndTextView : View {
    var number : String = ""
    var text : String = ""
    var isActive : Bool = false
    var body: some View {
        VStack(spacing : 12){
            Text(number)
                .foregroundColor(isActive ? Color.white : Color.gray)
                .font(.system(size: 14))
                .background(
                    Circle()
                        .stroke(isActive ? Color.blue : Color.gray)
                        .background(Circle().foregroundColor(isActive ? Color.blue : Color.white))
                        .frame(width : 18, height : 18)
                )
            Text(text)
                .foregroundColor(.black)
                .font(.system(size: 14))
                .frame(width : 100)
        }
    }
}

struct TitleOfAdPaOrView: View {
    var currentSept : CheckOutSetup
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.white)
        
            
            HStack(spacing : -34){
                NumberAndTextView (number: "1", text: "Address", isActive: currentSept == .address || currentSept == .payment || currentSept == .orderSummary)
                Rectangle()
                    .fill(currentSept == .payment || currentSept == .orderSummary ? .blue : .gray)
                    .frame(height : 1)
                    .padding(.top,-16)
                NumberAndTextView (number: "2", text: "Payment" , isActive: currentSept == .payment || currentSept == .orderSummary)
                Rectangle()
                    .fill(currentSept == .orderSummary ? .blue : .gray)
                    .frame(height : 1)
                    .padding(.top,-16)
                NumberAndTextView (number: "3", text: "Order Summary".padding(toLength: 12, withPad: "", startingAt: 4), isActive: currentSept == .orderSummary)
                
            }
            .padding(.horizontal)
        }.frame(height : 80)
            .shadow(radius: 5)
            .background(Color.white)
            .padding(.top,4)
            
    }
}

#Preview {
    TitleOfAdPaOrView(currentSept: .address)
}
